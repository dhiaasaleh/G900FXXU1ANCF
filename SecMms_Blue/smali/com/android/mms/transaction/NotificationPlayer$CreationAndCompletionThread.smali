.class final Lcom/android/mms/transaction/NotificationPlayer$CreationAndCompletionThread;
.super Ljava/lang/Thread;
.source "NotificationPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/NotificationPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CreationAndCompletionThread"
.end annotation


# instance fields
.field public mCmd:Lcom/android/mms/transaction/NotificationPlayer$Command;

.field final synthetic this$0:Lcom/android/mms/transaction/NotificationPlayer;


# direct methods
.method public constructor <init>(Lcom/android/mms/transaction/NotificationPlayer;Lcom/android/mms/transaction/NotificationPlayer$Command;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/transaction/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/mms/transaction/NotificationPlayer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lcom/android/mms/transaction/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/mms/transaction/NotificationPlayer$Command;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v3, p0, Lcom/android/mms/transaction/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/mms/transaction/NotificationPlayer;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    #setter for: Lcom/android/mms/transaction/NotificationPlayer;->mLooper:Landroid/os/Looper;
    invoke-static {v3, v4}, Lcom/android/mms/transaction/NotificationPlayer;->access$002(Lcom/android/mms/transaction/NotificationPlayer;Landroid/os/Looper;)Landroid/os/Looper;

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/android/mms/transaction/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/mms/transaction/NotificationPlayer$Command;

    iget-object v3, v3, Lcom/android/mms/transaction/NotificationPlayer$Command;->context:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    iget-object v3, p0, Lcom/android/mms/transaction/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/mms/transaction/NotificationPlayer$Command;

    iget v3, v3, Lcom/android/mms/transaction/NotificationPlayer$Command;->stream:I

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    iget-object v3, p0, Lcom/android/mms/transaction/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/mms/transaction/NotificationPlayer$Command;

    iget-object v3, v3, Lcom/android/mms/transaction/NotificationPlayer$Command;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/mms/transaction/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/mms/transaction/NotificationPlayer$Command;

    iget-object v4, v4, Lcom/android/mms/transaction/NotificationPlayer$Command;->uri:Landroid/net/Uri;

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object v3, p0, Lcom/android/mms/transaction/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/mms/transaction/NotificationPlayer$Command;

    iget-boolean v3, v3, Lcom/android/mms/transaction/NotificationPlayer$Command;->looping:Z

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setLooping(Z)V

    iget-object v3, p0, Lcom/android/mms/transaction/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/mms/transaction/NotificationPlayer$Command;

    iget v3, v3, Lcom/android/mms/transaction/NotificationPlayer$Command;->volume:F

    iget-object v4, p0, Lcom/android/mms/transaction/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/mms/transaction/NotificationPlayer$Command;

    iget v4, v4, Lcom/android/mms/transaction/NotificationPlayer$Command;->volume:F

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaPlayer;->setVolume(FF)V

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V

    iget-object v3, p0, Lcom/android/mms/transaction/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/mms/transaction/NotificationPlayer$Command;

    iget-object v3, v3, Lcom/android/mms/transaction/NotificationPlayer$Command;->uri:Landroid/net/Uri;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/transaction/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/mms/transaction/NotificationPlayer$Command;

    iget-object v3, v3, Lcom/android/mms/transaction/NotificationPlayer$Command;->uri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/transaction/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/mms/transaction/NotificationPlayer$Command;

    iget-object v3, v3, Lcom/android/mms/transaction/NotificationPlayer$Command;->uri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/transaction/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/mms/transaction/NotificationPlayer$Command;

    iget-boolean v3, v3, Lcom/android/mms/transaction/NotificationPlayer$Command;->looping:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/mms/transaction/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/mms/transaction/NotificationPlayer;

    #getter for: Lcom/android/mms/transaction/NotificationPlayer;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;
    invoke-static {v3}, Lcom/android/mms/transaction/NotificationPlayer;->access$100(Lcom/android/mms/transaction/NotificationPlayer;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/transaction/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/mms/transaction/NotificationPlayer$Command;

    iget v4, v4, Lcom/android/mms/transaction/NotificationPlayer$Command;->stream:I

    const/4 v5, 0x1

    invoke-virtual {v0, v3, v4, v5}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/mms/transaction/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/mms/transaction/NotificationPlayer;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V

    iget-object v3, p0, Lcom/android/mms/transaction/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/mms/transaction/NotificationPlayer;

    #getter for: Lcom/android/mms/transaction/NotificationPlayer;->mPlayer:Landroid/media/MediaPlayer;
    invoke-static {v3}, Lcom/android/mms/transaction/NotificationPlayer;->access$200(Lcom/android/mms/transaction/NotificationPlayer;)Landroid/media/MediaPlayer;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/mms/transaction/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/mms/transaction/NotificationPlayer;

    #getter for: Lcom/android/mms/transaction/NotificationPlayer;->mPlayer:Landroid/media/MediaPlayer;
    invoke-static {v3}, Lcom/android/mms/transaction/NotificationPlayer;->access$200(Lcom/android/mms/transaction/NotificationPlayer;)Landroid/media/MediaPlayer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->release()V

    :cond_1
    iget-object v3, p0, Lcom/android/mms/transaction/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/mms/transaction/NotificationPlayer;

    #setter for: Lcom/android/mms/transaction/NotificationPlayer;->mPlayer:Landroid/media/MediaPlayer;
    invoke-static {v3, v2}, Lcom/android/mms/transaction/NotificationPlayer;->access$202(Lcom/android/mms/transaction/NotificationPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    :try_start_2
    iget-object v3, p0, Lcom/android/mms/transaction/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/mms/transaction/NotificationPlayer;

    #setter for: Lcom/android/mms/transaction/NotificationPlayer;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v3, v0}, Lcom/android/mms/transaction/NotificationPlayer;->access$402(Lcom/android/mms/transaction/NotificationPlayer;Landroid/media/AudioManager;)Landroid/media/AudioManager;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void

    :cond_2
    :try_start_3
    iget-object v3, p0, Lcom/android/mms/transaction/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/mms/transaction/NotificationPlayer;

    #getter for: Lcom/android/mms/transaction/NotificationPlayer;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;
    invoke-static {v3}, Lcom/android/mms/transaction/NotificationPlayer;->access$100(Lcom/android/mms/transaction/NotificationPlayer;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/transaction/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/mms/transaction/NotificationPlayer$Command;

    iget v4, v4, Lcom/android/mms/transaction/NotificationPlayer$Command;->stream:I

    const/4 v5, 0x3

    invoke-virtual {v0, v3, v4, v5}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_4
    iget-object v3, p0, Lcom/android/mms/transaction/NotificationPlayer$CreationAndCompletionThread;->this$0:Lcom/android/mms/transaction/NotificationPlayer;

    #getter for: Lcom/android/mms/transaction/NotificationPlayer;->mTag:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/mms/transaction/NotificationPlayer;->access$300(Lcom/android/mms/transaction/NotificationPlayer;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error loading sound for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/transaction/NotificationPlayer$CreationAndCompletionThread;->mCmd:Lcom/android/mms/transaction/NotificationPlayer$Command;

    iget-object v5, v5, Lcom/android/mms/transaction/NotificationPlayer$Command;->uri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3
.end method
