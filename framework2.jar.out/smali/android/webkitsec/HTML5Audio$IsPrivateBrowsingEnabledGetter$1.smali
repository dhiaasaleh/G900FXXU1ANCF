.class Landroid/webkitsec/HTML5Audio$IsPrivateBrowsingEnabledGetter$1;
.super Ljava/lang/Object;
.source "HTML5Audio.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkitsec/HTML5Audio$IsPrivateBrowsingEnabledGetter;-><init>(Landroid/webkitsec/HTML5Audio;Landroid/os/Looper;Landroid/webkitsec/WebViewClassic;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/webkitsec/HTML5Audio$IsPrivateBrowsingEnabledGetter;

.field final synthetic val$this$0:Landroid/webkitsec/HTML5Audio;

.field final synthetic val$webView:Landroid/webkitsec/WebViewClassic;


# direct methods
.method constructor <init>(Landroid/webkitsec/HTML5Audio$IsPrivateBrowsingEnabledGetter;Landroid/webkitsec/HTML5Audio;Landroid/webkitsec/WebViewClassic;)V
    .locals 0

    iput-object p1, p0, Landroid/webkitsec/HTML5Audio$IsPrivateBrowsingEnabledGetter$1;->this$1:Landroid/webkitsec/HTML5Audio$IsPrivateBrowsingEnabledGetter;

    iput-object p2, p0, Landroid/webkitsec/HTML5Audio$IsPrivateBrowsingEnabledGetter$1;->val$this$0:Landroid/webkitsec/HTML5Audio;

    iput-object p3, p0, Landroid/webkitsec/HTML5Audio$IsPrivateBrowsingEnabledGetter$1;->val$webView:Landroid/webkitsec/WebViewClassic;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Landroid/webkitsec/HTML5Audio$IsPrivateBrowsingEnabledGetter$1;->this$1:Landroid/webkitsec/HTML5Audio$IsPrivateBrowsingEnabledGetter;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/webkitsec/HTML5Audio$IsPrivateBrowsingEnabledGetter$1;->this$1:Landroid/webkitsec/HTML5Audio$IsPrivateBrowsingEnabledGetter;

    iget-object v2, p0, Landroid/webkitsec/HTML5Audio$IsPrivateBrowsingEnabledGetter$1;->val$webView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->isPrivateBrowsingEnabled()Z

    move-result v2

    #setter for: Landroid/webkitsec/HTML5Audio$IsPrivateBrowsingEnabledGetter;->mIsPrivateBrowsingEnabled:Z
    invoke-static {v0, v2}, Landroid/webkitsec/HTML5Audio$IsPrivateBrowsingEnabledGetter;->access$102(Landroid/webkitsec/HTML5Audio$IsPrivateBrowsingEnabledGetter;Z)Z

    iget-object v0, p0, Landroid/webkitsec/HTML5Audio$IsPrivateBrowsingEnabledGetter$1;->this$1:Landroid/webkitsec/HTML5Audio$IsPrivateBrowsingEnabledGetter;

    const/4 v2, 0x1

    #setter for: Landroid/webkitsec/HTML5Audio$IsPrivateBrowsingEnabledGetter;->mIsReady:Z
    invoke-static {v0, v2}, Landroid/webkitsec/HTML5Audio$IsPrivateBrowsingEnabledGetter;->access$202(Landroid/webkitsec/HTML5Audio$IsPrivateBrowsingEnabledGetter;Z)Z

    iget-object v0, p0, Landroid/webkitsec/HTML5Audio$IsPrivateBrowsingEnabledGetter$1;->this$1:Landroid/webkitsec/HTML5Audio$IsPrivateBrowsingEnabledGetter;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
