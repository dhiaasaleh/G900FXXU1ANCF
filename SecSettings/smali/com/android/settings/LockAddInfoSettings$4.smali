.class Lcom/android/settings/LockAddInfoSettings$4;
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

    iput-object p1, p0, Lcom/android/settings/LockAddInfoSettings$4;->this$0:Lcom/android/settings/LockAddInfoSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const-string v2, "LockAddInfoSettings"

    const-string v3, "showMobileDateChargeEnableDialog enable"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/LockAddInfoSettings$4;->this$0:Lcom/android/settings/LockAddInfoSettings;

    invoke-virtual {v2}, Lcom/android/settings/LockAddInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "com.android.settings.LockAddInfoSettings"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "DoNotShowDialogLocation"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/settings/LockAddInfoSettings$4;->this$0:Lcom/android/settings/LockAddInfoSettings;

    #calls: Lcom/android/settings/LockAddInfoSettings;->sendWeatherData()V
    invoke-static {v2}, Lcom/android/settings/LockAddInfoSettings;->access$100(Lcom/android/settings/LockAddInfoSettings;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/settings/LockAddInfoSettings$4;->this$0:Lcom/android/settings/LockAddInfoSettings;

    #calls: Lcom/android/settings/LockAddInfoSettings;->showPermissionDialog()V
    invoke-static {v2}, Lcom/android/settings/LockAddInfoSettings;->access$200(Lcom/android/settings/LockAddInfoSettings;)V

    goto :goto_0
.end method
