.class public Lcom/android/mms/ui/ComposeDeleteMessage$CancelMessageListener;
.super Lcom/android/mms/ui/ComposeDeleteMessage$DeleteMessageListener;
.source "ComposeDeleteMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeDeleteMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CancelMessageListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeDeleteMessage;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ComposeDeleteMessage;JLjava/lang/String;ZJ)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ComposeDeleteMessage$CancelMessageListener;->this$0:Lcom/android/mms/ui/ComposeDeleteMessage;

    invoke-direct/range {p0 .. p7}, Lcom/android/mms/ui/ComposeDeleteMessage$DeleteMessageListener;-><init>(Lcom/android/mms/ui/ComposeDeleteMessage;JLjava/lang/String;ZJ)V

    return-void
.end method

.method public constructor <init>(Lcom/android/mms/ui/ComposeDeleteMessage;Landroid/net/Uri;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ComposeDeleteMessage$CancelMessageListener;->this$0:Lcom/android/mms/ui/ComposeDeleteMessage;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/ComposeDeleteMessage$DeleteMessageListener;-><init>(Lcom/android/mms/ui/ComposeDeleteMessage;Landroid/net/Uri;Z)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/mms/ui/ComposeDeleteMessage$CancelMessageListener;->this$0:Lcom/android/mms/ui/ComposeDeleteMessage;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeDeleteMessage;->deleteMessage()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeDeleteMessage$CancelMessageListener;->this$0:Lcom/android/mms/ui/ComposeDeleteMessage;

    #getter for: Lcom/android/mms/ui/ComposeDeleteMessage;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeDeleteMessage;->access$400(Lcom/android/mms/ui/ComposeDeleteMessage;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeDeleteMessage$CancelMessageListener;->this$0:Lcom/android/mms/ui/ComposeDeleteMessage;

    #getter for: Lcom/android/mms/ui/ComposeDeleteMessage;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeDeleteMessage;->access$400(Lcom/android/mms/ui/ComposeDeleteMessage;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c02e1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
