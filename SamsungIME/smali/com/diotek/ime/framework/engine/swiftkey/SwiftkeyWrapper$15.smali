.class Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$15;
.super Ljava/lang/Object;
.source "SwiftkeyWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->loadKeyPressModelByThread(Lcom/diotek/ime/framework/view/Keyboard;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;

.field final synthetic val$currentLangID:I

.field final synthetic val$dir:Ljava/io/File;

.field final synthetic val$inputMode:I

.field final synthetic val$isPhonePadMode:Z

.field final synthetic val$isSecondaryPage:Z

.field final synthetic val$keyboard:Lcom/diotek/ime/framework/view/Keyboard;


# direct methods
.method constructor <init>(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;Ljava/io/File;Lcom/diotek/ime/framework/view/Keyboard;IIZZ)V
    .locals 0

    iput-object p1, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$15;->this$0:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;

    iput-object p2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$15;->val$dir:Ljava/io/File;

    iput-object p3, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$15;->val$keyboard:Lcom/diotek/ime/framework/view/Keyboard;

    iput p4, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$15;->val$currentLangID:I

    iput p5, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$15;->val$inputMode:I

    iput-boolean p6, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$15;->val$isPhonePadMode:Z

    iput-boolean p7, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$15;->val$isSecondaryPage:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    invoke-static {}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->access$1600()Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$15;->val$dir:Ljava/io/File;

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$15;->val$keyboard:Lcom/diotek/ime/framework/view/Keyboard;

    iget v3, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$15;->val$currentLangID:I

    iget v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$15;->val$inputMode:I

    iget-boolean v5, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$15;->val$isPhonePadMode:Z

    iget-boolean v6, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$15;->val$isSecondaryPage:Z

    invoke-interface/range {v0 .. v6}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->loadKeyPressModel(Ljava/io/File;Lcom/diotek/ime/framework/view/Keyboard;IIZZ)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper$15;->this$0:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;

    #calls: Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->updateSuggestionUIThread()V
    invoke-static {v0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->access$600(Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;)V

    :cond_0
    return-void
.end method
