.class Lcom/android/settings/motion2013/HandMotionSettings$2;
.super Ljava/lang/Object;
.source "HandMotionSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/motion2013/HandMotionSettings;->makeTalkBackDisablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion2013/HandMotionSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/motion2013/HandMotionSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/motion2013/HandMotionSettings$2;->this$0:Lcom/android/settings/motion2013/HandMotionSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/motion2013/HandMotionSettings$2;->this$0:Lcom/android/settings/motion2013/HandMotionSettings;

    #calls: Lcom/android/settings/motion2013/HandMotionSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/motion2013/HandMotionSettings;->access$200(Lcom/android/settings/motion2013/HandMotionSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "surface_motion_engine"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/motion2013/HandMotionSettings$2;->this$0:Lcom/android/settings/motion2013/HandMotionSettings;

    #getter for: Lcom/android/settings/motion2013/HandMotionSettings;->mActionBarSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settings/motion2013/HandMotionSettings;->access$100(Lcom/android/settings/motion2013/HandMotionSettings;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    return-void
.end method
