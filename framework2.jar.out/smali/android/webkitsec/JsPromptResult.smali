.class public Landroid/webkitsec/JsPromptResult;
.super Landroid/webkitsec/JsResult;
.source "JsPromptResult.java"


# instance fields
.field private mStringResult:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/webkitsec/JsResult$ResultReceiver;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/webkitsec/JsResult;-><init>(Landroid/webkitsec/JsResult$ResultReceiver;)V

    return-void
.end method


# virtual methods
.method public confirm(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/webkitsec/JsPromptResult;->mStringResult:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/webkitsec/JsPromptResult;->confirm()V

    return-void
.end method

.method public getStringResult()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/JsPromptResult;->mStringResult:Ljava/lang/String;

    return-object v0
.end method
