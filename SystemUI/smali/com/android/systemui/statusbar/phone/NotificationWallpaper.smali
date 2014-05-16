.class Lcom/android/systemui/statusbar/phone/NotificationWallpaper;
.super Landroid/widget/FrameLayout;
.source "NotificationWallpaper.java"


# instance fields
.field private final NOTIF_WALLPAPER_IMAGE_PATH:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field bitmapWallpaper:Landroid/graphics/Bitmap;

.field private mNotificationWallpaperImage:Landroid/widget/ImageView;

.field wallpaperAlpha:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "NotificationWallpaperUpdater"

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationWallpaper;->TAG:Ljava/lang/String;

    const-string v0, "/sdcard/Alliance/CurrentTheme/Noti_Wall.jpg"

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationWallpaper;->NOTIF_WALLPAPER_IMAGE_PATH:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationWallpaper;->setNotificationWallpaper()V

    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationWallpaper;->bitmapWallpaper:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationWallpaper;->bitmapWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    invoke-static {}, Ljava/lang/System;->gc()V

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public setNotificationWallpaper()V
    .locals 8

    const/4 v4, -0x1

    new-instance v1, Ljava/io/File;

    const-string v2, "/sdcard/Alliance/CurrentTheme/Noti_Wall.jpg"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationWallpaper;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationWallpaper;->mNotificationWallpaperImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationWallpaper;->mNotificationWallpaperImage:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationWallpaper;->mNotificationWallpaperImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, v4, v4}, Lcom/android/systemui/statusbar/phone/NotificationWallpaper;->addView(Landroid/view/View;II)V

    const-string v2, "/sdcard/Alliance/CurrentTheme/Noti_Wall.jpg"

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationWallpaper;->bitmapWallpaper:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationWallpaper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationWallpaper;->bitmapWallpaper:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationWallpaper;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "notif_wallpaper_alpha"

    const v7, 0xff

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationWallpaper;->mNotificationWallpaperImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationWallpaper;->removeAllViews()V

    goto :goto_0
.end method
