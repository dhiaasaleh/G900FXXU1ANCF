.class Lcom/android/settings/flipfont/FontListPreference$4;
.super Ljava/lang/Object;
.source "FontListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/flipfont/FontListPreference;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/flipfont/FontListPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/flipfont/FontListPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/flipfont/FontListPreference$4;->this$0:Lcom/android/settings/flipfont/FontListPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference$4;->this$0:Lcom/android/settings/flipfont/FontListPreference;

    #getter for: Lcom/android/settings/flipfont/FontListPreference;->mPackageName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/flipfont/FontListPreference;->access$500(Lcom/android/settings/flipfont/FontListPreference;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sec_container_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/settings/flipfont/FontListPreference$LoadDialogTask;

    iget-object v1, p0, Lcom/android/settings/flipfont/FontListPreference$4;->this$0:Lcom/android/settings/flipfont/FontListPreference;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/settings/flipfont/FontListPreference$LoadDialogTask;-><init>(Lcom/android/settings/flipfont/FontListPreference;Lcom/android/settings/flipfont/FontListPreference$1;)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/flipfont/FontListPreference$LoadDialogTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference$4;->this$0:Lcom/android/settings/flipfont/FontListPreference;

    #setter for: Lcom/android/settings/flipfont/FontListPreference;->mSelectDialogIsActive:Z
    invoke-static {v0, v3}, Lcom/android/settings/flipfont/FontListPreference;->access$302(Lcom/android/settings/flipfont/FontListPreference;Z)Z

    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference$4;->this$0:Lcom/android/settings/flipfont/FontListPreference;

    invoke-virtual {v0}, Lcom/android/settings/flipfont/FontListPreference;->savePreferences()V

    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference$4;->this$0:Lcom/android/settings/flipfont/FontListPreference;

    invoke-virtual {v0}, Lcom/android/settings/flipfont/FontListPreference;->onOkButtonPressed()Z

    goto :goto_0
.end method
