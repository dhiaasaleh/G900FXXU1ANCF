.class final Lcom/android/incallui/InCallUtils$1;
.super Ljava/lang/Object;
.source "InCallUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/InCallUtils;->showDownloadAppDialog(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const-string v0, "com.samsung.android.app.memo"

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->connectSamsungApps(Ljava/lang/String;)V

    return-void
.end method
