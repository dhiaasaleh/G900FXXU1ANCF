.class Lcom/android/settings/accessibility/AccessibilitySettingsMobility$7;
.super Ljava/lang/Object;
.source "AccessibilitySettingsMobility.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/AccessibilitySettingsMobility;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$7;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsMobility;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$7;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsMobility;

    #calls: Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->access$800(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "access_control_use"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$7;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsMobility;

    #getter for: Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAccessControlPreference:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->access$200(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$7;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsMobility;

    const/4 v1, 0x5

    #calls: Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->removeDialog(I)V
    invoke-static {v0, v1}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->access$900(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;I)V

    return-void
.end method
