from django.db.models.signals import post_save
from django.dispatch import receiver
from django.conf import settings
from users.models.profile import Profile
from books.models import ReadingList
import logging

logger = logging.getLogger(__name__)

@receiver(post_save, sender=Profile)
def create_default_reading_lists(sender, instance, created, **kwargs):
    """Create default reading lists when a new profile is created"""
    if created:
        try:
            # Create default reading lists
            default_lists = [
                {"name": "To Do", "type": "todo"},
                {"name": "Doing", "type": "doing"},
                {"name": "Completed", "type": "done"}
            ]
            
            for list_data in default_lists:
                ReadingList.objects.create(
                    profile=instance,
                    name=list_data["name"],
                    type=list_data["type"],
                    privacy='private'
                )
                logger.info(f"Created {list_data['name']} list for user {instance.user.username}")
                
        except Exception as e:
            logger.error(f"Error creating reading lists for user {instance.user.username}: {str(e)}")
            raise 