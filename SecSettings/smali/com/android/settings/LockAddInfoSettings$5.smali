.class Lcom/android/settings/LockAddInfoSettings$5;
.super Ljava/lang/Object;
.source "LockAddInfoSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/LockAddInfoSettings;->showMobileDateChargeEnableDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/LockAddInfoSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/LockAddInfoSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/LockAddInfoSettings$5;->this$0:Lcom/android/settings/LockAddInfoSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "LockAddInfoSettings"

    const-string v1, "showMobileDateChargeEnableDialog onClick disable"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/LockAddInfoSettings$5;->this$0:Lcom/android/settings/LockAddInfoSettings;

    #getter for: Lcom/android/settings/LockAddInfoSettings;->mViewType:I
    invoke-static {v0}, Lcom/android/settings/LockAddInfoSettings;->access$300(Lcom/android/settings/LockAddInfoSettings;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/LockAddInfoSettings$5;->this$0:Lcom/android/settings/LockAddInfoSettings;

    #getter for: Lcom/android/settings/LockAddInfoSettings;->mActionBarSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settings/LockAddInfoSettings;->access$400(Lcom/android/settings/LockAddInfoSettings;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/LockAddInfoSettings$5;->this$0:Lcom/android/settings/LockAddInfoSettings;

    #getter for: Lcom/android/settings/LockAddInfoSettings;->mWeather:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/LockAddInfoSettings;->access$500(Lcom/android/settings/LockAddInfoSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/LockAddInfoSettings$5;->this$0:Lcom/android/settings/LockAddInfoSettings;

    invoke-virtual {v0}, Lcom/android/settings/LockAddInfoSettings;->updateSwitchState()V

    goto :goto_0
.end method
