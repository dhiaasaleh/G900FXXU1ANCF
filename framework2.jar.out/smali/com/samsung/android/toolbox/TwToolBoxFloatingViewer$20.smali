.class Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$20;
.super Ljava/lang/Object;
.source "TwToolBoxFloatingViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;


# direct methods
.method constructor <init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$20;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$20;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    #calls: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->playAnimationWakeup()V
    invoke-static {v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$5400(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    return-void
.end method
