.class Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "InteractionGroupSelectionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity$1;->this$0:Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity$1;->this$0:Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;

    invoke-virtual {v1}, Lcom/samsung/contacts/interactions/InteractionGroupSelectionActivity;->finish()V

    :cond_0
    return-void
.end method
