# استفاده از ایمیج سبک
FROM teddysun/v2ray

# ایجاد پوشه تنظیمات
RUN mkdir -p /etc/v2ray

# کپی فایل کانفیگ
# نکته: حتما مطمئن شوید فایل config.json در کنار Dockerfile قرار دارد
COPY config.json /etc/v2ray/config.json

# نکته حیاتی برای Railway:
# Railway معمولاً یک پورت تصادفی به شما اختصاص می‌دهد (PORT variable).
# اگر در config.json پورت را ثابت (مثلاً 1080) گذاشته‌اید، 
# باید در تنظیمات Railway (قسمت Variables) پورت را هم ست کنید 
# یا از پورت‌های استاندارد استفاده کنید.

# دستور اجرا
ENTRYPOINT ["/usr/bin/v2ray", "-config", "/etc/v2ray/config.json"]
