.class Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneUi$2;
.super Ljava/lang/Object;
.source "CreateBookmarkFolderPhoneUi.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneUi;->configureAndShowView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneUi;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneUi;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneUi$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneUi;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneUi$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneUi;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a0064

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneUi$2;->this$0:Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderPhoneUi;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/bookmarksDb/ui/CreateBookmarkFolderBaseUi;->mFolderNameInput:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
