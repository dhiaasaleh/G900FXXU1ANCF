.class Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar$2;
.super Ljava/lang/Object;
.source "FindTextToolbar.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->getTextWatcher()Landroid/text/TextWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar$2;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar$2;->this$0:Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;

    #getter for: Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->mFindTextToolbarWrapper:Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->access$200(Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;)Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;->onTextChanged(Ljava/lang/CharSequence;III)V

    return-void
.end method
