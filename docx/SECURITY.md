# BookNest Security Guide

## 🔒 Environment Variables & Secrets Management

This guide explains how to properly handle sensitive information in the BookNest project to ensure security when deploying or sharing code.

## ⚠️ IMPORTANT: Before Pushing to GitHub

### 1. Verify .gitignore is Working
Ensure the following files are **NEVER** committed to version control:
- `.env` (contains real secrets)
- `*.log` files
- `media/` directory
- `db.sqlite3`
- Any files containing passwords, API keys, or tokens

### 2. Check Your .env File
Your `.env` file should **NEVER** be committed. It contains real secrets and should only exist locally.

## 🔧 Environment Setup

### Step 1: Copy Environment Template
```bash
cp .env.example .env
```

### Step 2: Generate Secure Keys

#### Django Secret Key
Generate a new Django secret key:
```python
from django.core.management.utils import get_random_secret_key
print(get_random_secret_key())
```

#### JWT Signing Key
Generate a secure JWT signing key:
```python
import secrets
print(secrets.token_hex(32))
```

### Step 3: Configure Your .env File
Update your `.env` file with real values:

```env
# Django Configuration
DEBUG=True  # Set to False in production
SECRET_KEY=your-actual-secret-key-here
JWT_SIGNING_KEY=your-actual-jwt-signing-key-here

# Database Configuration
DB_NAME=booknest_db
DB_USER=postgres
DB_PASSWORD=your-actual-db-password
DB_HOST=localhost  # or 'db' for Docker
DB_PORT=5432

# Cloudinary Configuration
CLOUDINARY_CLOUD_NAME=your-actual-cloud-name
CLOUDINARY_API_KEY=your-actual-api-key
CLOUDINARY_API_SECRET=your-actual-api-secret

# pgAdmin Configuration
PGADMIN_EMAIL=your-email@domain.com
PGADMIN_PASSWORD=your-secure-password

# Security Settings
ALLOWED_HOSTS=localhost,127.0.0.1,yourdomain.com
CSRF_TRUSTED_ORIGINS=http://localhost:8000,https://yourdomain.com
```

## 🐳 Docker Security

### Environment Variables in Docker
The `docker-compose.yml` file is configured to read from environment variables. This is secure because:
1. Real secrets are in `.env` (not committed)
2. Docker reads from environment, not hardcoded values
3. Production can use different environment sources

### Docker Production Considerations
1. **Never** build images with secrets baked in
2. Use Docker secrets or external secret management
3. Set `DEBUG=False` in production
4. Use proper SSL certificates
5. Configure proper firewall rules

## 🚀 Production Deployment

### Environment Variables for Production
```env
# Production settings
DEBUG=False
SECRET_KEY=your-production-secret-key
JWT_SIGNING_KEY=your-production-jwt-key

# Database (use managed database service)
DB_NAME=booknest_prod
DB_USER=booknest_user
DB_PASSWORD=very-secure-production-password
DB_HOST=your-db-host.com
DB_PORT=5432

# Security
ALLOWED_HOSTS=yourdomain.com,www.yourdomain.com
CSRF_TRUSTED_ORIGINS=https://yourdomain.com,https://www.yourdomain.com
```

### Production Security Checklist
- [ ] `DEBUG=False`
- [ ] Strong, unique `SECRET_KEY`
- [ ] Strong, unique `JWT_SIGNING_KEY`
- [ ] Secure database credentials
- [ ] HTTPS enabled
- [ ] Proper `ALLOWED_HOSTS` configuration
- [ ] Secure `CSRF_TRUSTED_ORIGINS`
- [ ] Database backups configured
- [ ] Monitoring and logging enabled
- [ ] Regular security updates

## 🔍 Security Best Practices

### 1. Key Rotation
- Rotate JWT signing keys regularly
- Change database passwords periodically
- Update API keys when needed

### 2. Access Control
- Use principle of least privilege
- Implement proper user roles
- Regular access reviews

### 3. Monitoring
- Monitor failed login attempts
- Log security events
- Set up alerts for suspicious activity

### 4. Data Protection
- Encrypt sensitive data at rest
- Use HTTPS for all communications
- Implement proper session management

## 🚨 What to Do If Secrets Are Exposed

### If you accidentally commit secrets:
1. **Immediately** change all exposed credentials
2. Revoke and regenerate API keys
3. Update environment variables
4. Consider the repository compromised
5. Review git history and clean if necessary

### Emergency Response:
```bash
# 1. Change all passwords and keys immediately
# 2. Update .env with new credentials
# 3. Restart all services
# 4. Monitor for unauthorized access
```

## 📞 Security Contact

For security issues or questions:
- Review this document
- Check Django security documentation
- Follow security best practices
- Keep dependencies updated

## 🔗 Additional Resources

- [Django Security Documentation](https://docs.djangoproject.com/en/stable/topics/security/)
- [OWASP Top 10](https://owasp.org/www-project-top-ten/)
- [Docker Security Best Practices](https://docs.docker.com/develop/security-best-practices/)
- [PostgreSQL Security](https://www.postgresql.org/docs/current/security.html)

---

**Remember**: Security is an ongoing process, not a one-time setup. Regularly review and update your security practices.