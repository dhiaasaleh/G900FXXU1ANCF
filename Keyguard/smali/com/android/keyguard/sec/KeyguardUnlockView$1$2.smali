.class Lcom/android/keyguard/sec/KeyguardUnlockView$1$2;
.super Ljava/lang/Object;
.source "KeyguardUnlockView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/KeyguardUnlockView$1;->refreshVoiceUnlockHelpText()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/sec/KeyguardUnlockView$1;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardUnlockView$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView$1$2;->this$1:Lcom/android/keyguard/sec/KeyguardUnlockView$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView$1$2;->this$1:Lcom/android/keyguard/sec/KeyguardUnlockView$1;

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardUnlockView$1;->this$0:Lcom/android/keyguard/sec/KeyguardUnlockView;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView$1$2;->this$1:Lcom/android/keyguard/sec/KeyguardUnlockView$1;

    iget-object v1, v1, Lcom/android/keyguard/sec/KeyguardUnlockView$1;->this$0:Lcom/android/keyguard/sec/KeyguardUnlockView;

    #getter for: Lcom/android/keyguard/sec/KeyguardUnlockView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardUnlockView;->access$1000(Lcom/android/keyguard/sec/KeyguardUnlockView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600c5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/keyguard/sec/KeyguardUnlockView;->mDefaultHelpText:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/KeyguardUnlockView;->access$402(Lcom/android/keyguard/sec/KeyguardUnlockView;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView$1$2;->this$1:Lcom/android/keyguard/sec/KeyguardUnlockView$1;

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardUnlockView$1;->this$0:Lcom/android/keyguard/sec/KeyguardUnlockView;

    #getter for: Lcom/android/keyguard/sec/KeyguardUnlockView;->mHelpTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardUnlockView;->access$000(Lcom/android/keyguard/sec/KeyguardUnlockView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView$1$2;->this$1:Lcom/android/keyguard/sec/KeyguardUnlockView$1;

    iget-object v1, v1, Lcom/android/keyguard/sec/KeyguardUnlockView$1;->this$0:Lcom/android/keyguard/sec/KeyguardUnlockView;

    #getter for: Lcom/android/keyguard/sec/KeyguardUnlockView;->mDefaultHelpText:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardUnlockView;->access$400(Lcom/android/keyguard/sec/KeyguardUnlockView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
