.class Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$1$1;
.super Ljava/lang/Object;
.source "ExtracterController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$1;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$1;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$1$1;->this$1:Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "ExtractModeController"

    const-string v1, "inside run ....createReader"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$1$1;->this$1:Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$1;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController$1;->this$0:Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;

    #calls: Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->createExtracter()V
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;->access$300(Lcom/sec/android/app/sbrowser/extractmode/controller/ExtracterController;)V

    return-void
.end method
