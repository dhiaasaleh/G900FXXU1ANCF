.class Lcom/android/mms/spam/SetupSpamNumberList$9;
.super Ljava/lang/Object;
.source "SetupSpamNumberList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/spam/SetupSpamNumberList;->softkeyLeftRun(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/spam/SetupSpamNumberList;


# direct methods
.method constructor <init>(Lcom/android/mms/spam/SetupSpamNumberList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/spam/SetupSpamNumberList$9;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList$9;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    #calls: Lcom/android/mms/spam/SetupSpamNumberList;->updateDeleteScreenItems()V
    invoke-static {v0}, Lcom/android/mms/spam/SetupSpamNumberList;->access$1000(Lcom/android/mms/spam/SetupSpamNumberList;)V

    return-void
.end method
