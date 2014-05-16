.class public Lcom/android/settings/festivaleffect/FestivalEffectGuide;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "FestivalEffectGuide.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final DEFAULT:Ljava/lang/String; = "default"

.field private static final EXTRA_TYPE:Ljava/lang/String; = "type"

.field private static final KEY_HOME_LOCK_SCREEN:Ljava/lang/String; = "home_lock_screen"

.field private static final KEY_NOTIFICATION_PANEL:Ljava/lang/String; = "notification_panel"

.field private static final KEY_WEATHER_WIDGET:Ljava/lang/String; = "weather_widget"

.field private static final TAG:Ljava/lang/String; = "FestivalEffectGuide"


# instance fields
.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mActivity:Landroid/app/Activity;

.field private mEffectDBItem:Ljava/lang/String;

.field private mEffectType:Ljava/lang/String;

.field private mGuideContent:Ljava/lang/String;

.field private mGuideContent2:Ljava/lang/String;

.field private mGuideImgResID:I

.field private mGuideImgResID2:I

.field private mImageView:Landroid/widget/ImageView;

.field private mImageView2:Landroid/widget/ImageView;

.field private mLearnAboutTitleID:I

.field private mMessageView:Landroid/widget/TextView;

.field private mMessageView2:Landroid/widget/TextView;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const-string v0, "default"

    iput-object v0, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mEffectType:Ljava/lang/String;

    const-string v0, "default"

    iput-object v0, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mEffectDBItem:Ljava/lang/String;

    const-string v0, "default"

    iput-object v0, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mGuideContent:Ljava/lang/String;

    const-string v0, "default"

    iput-object v0, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mGuideContent2:Ljava/lang/String;

    iput v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mLearnAboutTitleID:I

    iput v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mGuideImgResID:I

    iput v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mGuideImgResID2:I

    return-void
.end method

.method private broadcastHomeLockScreenChanged(Z)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.festival.HOME_LOCK_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private broadcastNotificationPanelChanged(Z)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.festival.NOTIFICATION_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private setArgument(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    const-string v1, "home_lock_screen"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "festival_effect_home_lock_screen"

    iput-object v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mEffectDBItem:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09196e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mGuideContent:Ljava/lang/String;

    const v1, 0x7f09196f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mGuideContent2:Ljava/lang/String;

    const v1, 0x7f09196c

    iput v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mLearnAboutTitleID:I

    iput v2, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mGuideImgResID:I

    iput v2, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mGuideImgResID2:I

    :goto_0
    return-void

    :cond_0
    const-string v1, "notification_panel"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "festival_effect_notification_panel"

    iput-object v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mEffectDBItem:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f091971

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mGuideContent:Ljava/lang/String;

    const v1, 0x7f091972

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mGuideContent2:Ljava/lang/String;

    const v1, 0x7f0914de

    iput v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mLearnAboutTitleID:I

    iput v2, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mGuideImgResID:I

    iput v2, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mGuideImgResID2:I

    goto :goto_0

    :cond_1
    const-string v1, "weather_widget"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "festival_effect_weather_widget"

    iput-object v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mEffectDBItem:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f091973

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mGuideContent:Ljava/lang/String;

    const-string v1, "default"

    iput-object v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mGuideContent2:Ljava/lang/String;

    const v1, 0x7f09196d

    iput v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mLearnAboutTitleID:I

    iput v2, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mGuideImgResID:I

    iput v2, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mGuideImgResID2:I

    goto :goto_0

    :cond_2
    const-string v1, "FestivalEffectGuide"

    const-string v2, "Cannot get correct motion information"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x0

    const-string v2, "layout_inflater"

    invoke-virtual {p0, v2}, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v2, 0x7f0400ab

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0b0486

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mMessageView:Landroid/widget/TextView;

    const v2, 0x7f0b0485

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mImageView:Landroid/widget/ImageView;

    const v2, 0x7f0b01e8

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mMessageView2:Landroid/widget/TextView;

    const v2, 0x7f0b01e7

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mImageView2:Landroid/widget/ImageView;

    const-string v2, "default"

    iget-object v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mGuideContent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mMessageView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mGuideContent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const-string v2, "default"

    iget-object v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mGuideContent2:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mMessageView2:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mGuideContent2:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget v2, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mGuideImgResID:I

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mImageView:Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mImageView:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mGuideImgResID:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    iget v2, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mGuideImgResID2:I

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mImageView2:Landroid/widget/ImageView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mImageView2:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mGuideImgResID2:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->getListView()Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v4, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    const-string v0, "default"

    iget-object v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mEffectDBItem:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mEffectDBItem:Ljava/lang/String;

    if-eqz p2, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "festival_effect_home_lock_screen"

    iget-object v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mEffectDBItem:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->broadcastHomeLockScreenChanged(Z)V

    :cond_0
    const-string v0, "festival_effect_notification_panel"

    iget-object v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mEffectDBItem:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p2}, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->broadcastNotificationPanelChanged(Z)V

    :cond_1
    const-string v0, "festival_effect_weather_widget"

    iget-object v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mEffectDBItem:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/16 v5, 0x10

    const/4 v6, -0x2

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "type"

    const-string v3, "default"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mEffectType:Ljava/lang/String;

    :cond_0
    iget-object v2, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mEffectType:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->setArgument(Ljava/lang/String;)V

    const v2, 0x7f070052

    invoke-virtual {p0, v2}, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mActivity:Landroid/app/Activity;

    new-instance v2, Landroid/widget/Switch;

    iget-object v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mActionBarSwitch:Landroid/widget/Switch;

    iget-object v2, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mActivity:Landroid/app/Activity;

    instance-of v2, v2, Landroid/preference/PreferenceActivity;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0045

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v4, v4, v1, v4}, Landroid/widget/Switch;->setPadding(IIII)V

    iget-object v2, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v5, v5}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    iget-object v2, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v4, Landroid/app/ActionBar$LayoutParams;

    const/16 v5, 0x15

    invoke-direct {v4, v6, v6, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v3, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    iget-object v2, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mActionBarLayout:Landroid/view/View;

    :cond_1
    iget-object v2, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const-string v2, "default"

    iget-object v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mEffectDBItem:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mActionBarLayout:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mEffectDBItem:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    :goto_0
    iget-object v1, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/settings/festivaleffect/FestivalEffectGuide;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    return-void
.end method
