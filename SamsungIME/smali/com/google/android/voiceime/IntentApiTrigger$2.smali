.class Lcom/google/android/voiceime/IntentApiTrigger$2;
.super Ljava/lang/Object;
.source "IntentApiTrigger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/voiceime/IntentApiTrigger;->scheduleCommit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voiceime/IntentApiTrigger;


# direct methods
.method constructor <init>(Lcom/google/android/voiceime/IntentApiTrigger;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/voiceime/IntentApiTrigger$2;->this$0:Lcom/google/android/voiceime/IntentApiTrigger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/voiceime/IntentApiTrigger$2;->this$0:Lcom/google/android/voiceime/IntentApiTrigger;

    #calls: Lcom/google/android/voiceime/IntentApiTrigger;->commitResult()V
    invoke-static {v0}, Lcom/google/android/voiceime/IntentApiTrigger;->access$100(Lcom/google/android/voiceime/IntentApiTrigger;)V

    return-void
.end method
