.class Lcom/android/mms/ui/CbConfigPreferenceActivity$1;
.super Ljava/lang/Object;
.source "CbConfigPreferenceActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/CbConfigPreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/CbConfigPreferenceActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity$1;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity$1;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;

    iget-object v0, v0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity$1;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;

    #getter for: Lcom/android/mms/ui/CbConfigPreferenceActivity;->mSwitch:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->access$000(Lcom/android/mms/ui/CbConfigPreferenceActivity;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    iget-object v2, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity$1;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;

    #getter for: Lcom/android/mms/ui/CbConfigPreferenceActivity;->mActivePhone:I
    invoke-static {v2}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->access$100(Lcom/android/mms/ui/CbConfigPreferenceActivity;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->changeCBMessgesOption(Landroid/content/Context;ZI)Z

    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity$1;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;

    #calls: Lcom/android/mms/ui/CbConfigPreferenceActivity;->setElementEnable()V
    invoke-static {v0}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->access$200(Lcom/android/mms/ui/CbConfigPreferenceActivity;)V

    return-void
.end method
