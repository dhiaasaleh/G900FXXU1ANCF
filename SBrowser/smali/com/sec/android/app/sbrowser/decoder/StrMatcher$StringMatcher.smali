.class final Lcom/sec/android/app/sbrowser/decoder/StrMatcher$StringMatcher;
.super Lcom/sec/android/app/sbrowser/decoder/StrMatcher;
.source "StrMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/decoder/StrMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StringMatcher"
.end annotation


# instance fields
.field private final chars:[C


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/decoder/StrMatcher;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/StrMatcher$StringMatcher;->chars:[C

    return-void
.end method


# virtual methods
.method public isMatch([CIII)I
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/decoder/StrMatcher$StringMatcher;->chars:[C

    array-length v1, v3

    add-int v3, p2, v1

    if-le v3, p4, :cond_1

    move v1, v2

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/decoder/StrMatcher$StringMatcher;->chars:[C

    array-length v3, v3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/decoder/StrMatcher$StringMatcher;->chars:[C

    aget-char v3, v3, v0

    aget-char v4, p1, p2

    if-eq v3, v4, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_1
.end method
