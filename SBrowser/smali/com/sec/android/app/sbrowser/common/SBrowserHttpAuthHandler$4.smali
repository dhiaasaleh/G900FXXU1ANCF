.class Lcom/sec/android/app/sbrowser/common/SBrowserHttpAuthHandler$4;
.super Ljava/lang/Object;
.source "SBrowserHttpAuthHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/SBrowserHttpAuthHandler;->createDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/SBrowserHttpAuthHandler;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/common/SBrowserHttpAuthHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserHttpAuthHandler$4;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserHttpAuthHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserHttpAuthHandler$4;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserHttpAuthHandler;

    #getter for: Lcom/sec/android/app/sbrowser/common/SBrowserHttpAuthHandler;->mAuthHandler:Lorg/chromium/chrome/browser/ChromeHttpAuthHandler;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserHttpAuthHandler;->access$100(Lcom/sec/android/app/sbrowser/common/SBrowserHttpAuthHandler;)Lorg/chromium/chrome/browser/ChromeHttpAuthHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserHttpAuthHandler$4;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserHttpAuthHandler;

    #calls: Lcom/sec/android/app/sbrowser/common/SBrowserHttpAuthHandler;->getUname()Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/SBrowserHttpAuthHandler;->access$200(Lcom/sec/android/app/sbrowser/common/SBrowserHttpAuthHandler;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/SBrowserHttpAuthHandler$4;->this$0:Lcom/sec/android/app/sbrowser/common/SBrowserHttpAuthHandler;

    #calls: Lcom/sec/android/app/sbrowser/common/SBrowserHttpAuthHandler;->getPwd()Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/SBrowserHttpAuthHandler;->access$300(Lcom/sec/android/app/sbrowser/common/SBrowserHttpAuthHandler;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/ChromeHttpAuthHandler;->proceed(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
