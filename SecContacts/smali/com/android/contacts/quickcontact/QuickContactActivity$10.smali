.class Lcom/android/contacts/quickcontact/QuickContactActivity$10;
.super Ljava/lang/Object;
.source "QuickContactActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/quickcontact/QuickContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$10;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    move-object v0, p1

    check-cast v0, Lcom/android/contacts/quickcontact/CheckableImageView;

    invoke-virtual {v0}, Lcom/android/contacts/quickcontact/CheckableImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$10;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    #getter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;
    invoke-static {v3}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$1400(Lcom/android/contacts/quickcontact/QuickContactActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$10;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    #getter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->mListPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v3}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$1500(Lcom/android/contacts/quickcontact/QuickContactActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v4}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method
