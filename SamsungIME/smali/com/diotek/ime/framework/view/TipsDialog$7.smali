.class Lcom/diotek/ime/framework/view/TipsDialog$7;
.super Ljava/lang/Object;
.source "TipsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/framework/view/TipsDialog;->showGestureGuideDialog(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/framework/view/TipsDialog;


# direct methods
.method constructor <init>(Lcom/diotek/ime/framework/view/TipsDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/diotek/ime/framework/view/TipsDialog$7;->this$0:Lcom/diotek/ime/framework/view/TipsDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/TipsDialog$7;->this$0:Lcom/diotek/ime/framework/view/TipsDialog;

    #setter for: Lcom/diotek/ime/framework/view/TipsDialog;->mIsCheckDontShowGestureGuide:Z
    invoke-static {v0, v2}, Lcom/diotek/ime/framework/view/TipsDialog;->access$402(Lcom/diotek/ime/framework/view/TipsDialog;Z)Z

    iget-object v0, p0, Lcom/diotek/ime/framework/view/TipsDialog$7;->this$0:Lcom/diotek/ime/framework/view/TipsDialog;

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/common/InputManager;->setDontShowGestureGuideConsecutively(Z)V

    iget-object v0, p0, Lcom/diotek/ime/framework/view/TipsDialog$7;->this$0:Lcom/diotek/ime/framework/view/TipsDialog;

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->showDlgMsgBox()V

    :cond_0
    return v2
.end method
