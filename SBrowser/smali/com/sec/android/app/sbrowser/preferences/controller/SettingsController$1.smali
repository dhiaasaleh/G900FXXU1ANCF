.class Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$1;
.super Ljava/lang/Object;
.source "SettingsController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->checkLoggingState:Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.osp.app.signin.action.ADD_SAMSUNG_ACCOUNT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "client_id"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "client_secret"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "mypackage"

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;

    #getter for: Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->mActivityContext:Landroid/preference/PreferenceActivity;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->access$200(Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;)Landroid/preference/PreferenceActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "OSP_VER"

    const-string v2, "OSP_02"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "MODE"

    const-string v2, "ADD_ACCOUNT"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;

    #getter for: Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->mActivityContext:Landroid/preference/PreferenceActivity;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->access$200(Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;)Landroid/preference/PreferenceActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->signInDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController$1;->this$0:Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sec/android/app/sbrowser/preferences/controller/SettingsController;->signInDialog:Landroid/app/Dialog;

    :cond_0
    return-void
.end method
