.class public final Landroid/util/secutil/Log;
.super Ljava/lang/Object;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/secutil/Log$TerribleFailureHandler;,
        Landroid/util/secutil/Log$TerribleFailure;
    }
.end annotation


# static fields
.field public static final ASSERT:I = 0x7

.field public static final DEBUG:I = 0x3

.field public static final ERROR:I = 0x6

.field public static final INFO:I = 0x4

.field public static final LOG_ID_EVENTS:I = 0x2

.field public static final LOG_ID_MAIN:I = 0x0

.field public static final LOG_ID_RADIO:I = 0x1

.field public static final LOG_ID_SYSTEM:I = 0x3

.field public static final VERBOSE:I = 0x2

.field public static final WARN:I = 0x5

.field private static sWtfHandler:Landroid/util/secutil/Log$TerribleFailureHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/util/secutil/Log$1;

    invoke-direct {v0}, Landroid/util/secutil/Log$1;-><init>()V

    sput-object v0, Landroid/util/secutil/Log;->sWtfHandler:Landroid/util/secutil/Log$TerribleFailureHandler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    sget-boolean v1, Landroid/util/secutil/LogSwitcher;->isShowingGlobalLog:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    invoke-static {v0, v1, p0, p1}, Landroid/util/secutil/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_0
    return v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 4

    const/4 v0, 0x0

    sget-boolean v1, Landroid/util/secutil/LogSwitcher;->isShowingGlobalLog:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Landroid/util/secutil/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Landroid/util/secutil/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_0
    return v0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    sget-boolean v1, Landroid/util/secutil/LogSwitcher;->isShowingGlobalLog:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    invoke-static {v0, v1, p0, p1}, Landroid/util/secutil/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_0
    return v0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 4

    const/4 v0, 0x0

    sget-boolean v1, Landroid/util/secutil/LogSwitcher;->isShowingGlobalLog:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Landroid/util/secutil/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Landroid/util/secutil/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_0
    return v0
.end method

.method public static getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const-string v3, ""

    :goto_0
    return-object v3

    :cond_0
    move-object v2, p0

    :goto_1
    if-eqz v2, :cond_2

    instance-of v3, v2, Ljava/net/UnknownHostException;

    if-eqz v3, :cond_1

    const-string v3, ""

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    sget-boolean v1, Landroid/util/secutil/LogSwitcher;->isShowingGlobalLog:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    invoke-static {v0, v1, p0, p1}, Landroid/util/secutil/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_0
    return v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 4

    const/4 v0, 0x0

    sget-boolean v1, Landroid/util/secutil/LogSwitcher;->isShowingGlobalLog:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Landroid/util/secutil/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Landroid/util/secutil/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_0
    return v0
.end method

.method public static native isLoggable(Ljava/lang/String;I)Z
.end method

.method public static println(ILjava/lang/String;Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    sget-boolean v1, Landroid/util/secutil/LogSwitcher;->isShowingGlobalLog:Z

    if-eqz v1, :cond_0

    invoke-static {v0, p0, p1, p2}, Landroid/util/secutil/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_0
    return v0
.end method

.method public static native println_native(IILjava/lang/String;Ljava/lang/String;)I
.end method

.method public static secD(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecDLog:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static secD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecDLog:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static secE(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecELog:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecELog:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static secI(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecILog:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static secI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecILog:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static secV(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecVLog:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static secV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecVLog:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static secW(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecWLog:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static secW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecWLog:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static secW(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecWLog:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setWtfHandler(Landroid/util/secutil/Log$TerribleFailureHandler;)Landroid/util/secutil/Log$TerribleFailureHandler;
    .locals 3

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "handler == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    sget-object v0, Landroid/util/secutil/Log;->sWtfHandler:Landroid/util/secutil/Log$TerribleFailureHandler;

    sput-object p0, Landroid/util/secutil/Log;->sWtfHandler:Landroid/util/secutil/Log$TerribleFailureHandler;

    return-object v0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    sget-boolean v1, Landroid/util/secutil/LogSwitcher;->isShowingGlobalLog:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    invoke-static {v0, v1, p0, p1}, Landroid/util/secutil/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_0
    return v0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 4

    const/4 v0, 0x0

    sget-boolean v1, Landroid/util/secutil/LogSwitcher;->isShowingGlobalLog:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Landroid/util/secutil/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Landroid/util/secutil/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_0
    return v0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    sget-boolean v1, Landroid/util/secutil/LogSwitcher;->isShowingGlobalLog:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    invoke-static {v0, v1, p0, p1}, Landroid/util/secutil/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_0
    return v0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 4

    const/4 v0, 0x0

    sget-boolean v1, Landroid/util/secutil/LogSwitcher;->isShowingGlobalLog:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Landroid/util/secutil/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Landroid/util/secutil/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_0
    return v0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 3

    const/4 v0, 0x0

    sget-boolean v1, Landroid/util/secutil/LogSwitcher;->isShowingGlobalLog:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    invoke-static {p1}, Landroid/util/secutil/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Landroid/util/secutil/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_0
    return v0
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/util/secutil/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 6

    new-instance v1, Landroid/util/secutil/Log$TerribleFailure;

    invoke-direct {v1, p1, p2}, Landroid/util/secutil/Log$TerribleFailure;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v2, 0x0

    const/4 v3, 0x7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Landroid/util/secutil/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, p0, v4}, Landroid/util/secutil/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    sget-object v2, Landroid/util/secutil/Log;->sWtfHandler:Landroid/util/secutil/Log$TerribleFailureHandler;

    invoke-interface {v2, p0, v1}, Landroid/util/secutil/Log$TerribleFailureHandler;->onTerribleFailure(Ljava/lang/String;Landroid/util/secutil/Log$TerribleFailure;)V

    return v0
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Landroid/util/secutil/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method
