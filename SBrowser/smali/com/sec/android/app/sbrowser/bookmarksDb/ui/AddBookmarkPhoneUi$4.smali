.class Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi$4;
.super Ljava/lang/Object;
.source "AddBookmarkPhoneUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi;->resourceInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi$4;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi$4;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkPhoneUi;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/AddBookmarkBaseUi;->mAddBookmarkUiController:Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/bookmarksDb/Controller/AddBookmarkUiController;->doneButtonSelected()V

    return-void
.end method
