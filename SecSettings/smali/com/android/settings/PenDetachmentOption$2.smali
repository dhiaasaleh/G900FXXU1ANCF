.class Lcom/android/settings/PenDetachmentOption$2;
.super Ljava/lang/Object;
.source "PenDetachmentOption.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/PenDetachmentOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/PenDetachmentOption;


# direct methods
.method constructor <init>(Lcom/android/settings/PenDetachmentOption;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/PenDetachmentOption$2;->this$0:Lcom/android/settings/PenDetachmentOption;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/PenDetachmentOption$2;->this$0:Lcom/android/settings/PenDetachmentOption;

    #getter for: Lcom/android/settings/PenDetachmentOption;->mGestureDetector:Landroid/view/GestureDetector;
    invoke-static {v0}, Lcom/android/settings/PenDetachmentOption;->access$300(Lcom/android/settings/PenDetachmentOption;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v1

    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/PenDetachmentOption$2;->this$0:Lcom/android/settings/PenDetachmentOption;

    #getter for: Lcom/android/settings/PenDetachmentOption;->mCurrentFooterView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/settings/PenDetachmentOption;->access$200(Lcom/android/settings/PenDetachmentOption;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/PenDetachmentOption$2;->this$0:Lcom/android/settings/PenDetachmentOption;

    #getter for: Lcom/android/settings/PenDetachmentOption;->mCurrentFooterView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/settings/PenDetachmentOption;->access$200(Lcom/android/settings/PenDetachmentOption;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
