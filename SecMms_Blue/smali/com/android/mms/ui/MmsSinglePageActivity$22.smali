.class Lcom/android/mms/ui/MmsSinglePageActivity$22;
.super Ljava/lang/Object;
.source "MmsSinglePageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MmsSinglePageActivity;->exitMmsSinglePageActivity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MmsSinglePageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MmsSinglePageActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MmsSinglePageActivity$22;->this$0:Lcom/android/mms/ui/MmsSinglePageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity$22;->this$0:Lcom/android/mms/ui/MmsSinglePageActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsSinglePageActivity;->finish()V

    return-void
.end method
