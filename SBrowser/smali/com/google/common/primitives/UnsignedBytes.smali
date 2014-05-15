.class public final Lcom/google/common/primitives/UnsignedBytes;
.super Ljava/lang/Object;
.source "UnsignedBytes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder;
    }
.end annotation


# static fields
.field public static final MAX_POWER_OF_TWO:B = -0x80t


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkedCast(J)B
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v0, 0x8

    shr-long v3, p0, v0

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "out of range: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    long-to-int v0, p0

    int-to-byte v0, v0

    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public static compare(BB)I
    .locals 2

    invoke-static {p0}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v0

    invoke-static {p1}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public static varargs join(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v2, p1

    if-nez v2, :cond_0

    const-string v2, ""

    :goto_0
    return-object v2

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v2, p1

    mul-int/lit8 v2, v2, 0x5

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    aget-byte v2, p1, v2

    invoke-static {v2}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte v3, p1, v1

    invoke-static {v3}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static lexicographicalComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<[B>;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder;->BEST_COMPARATOR:Ljava/util/Comparator;

    return-object v0
.end method

.method static lexicographicalComparatorJavaImpl()Ljava/util/Comparator;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<[B>;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$PureJavaComparator;->INSTANCE:Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$PureJavaComparator;

    return-object v0
.end method

.method public static varargs max([B)B
    .locals 5

    const/4 v4, 0x0

    array-length v3, p0

    if-lez v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    aget-byte v3, p0, v4

    invoke-static {v3}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v1

    const/4 v0, 0x1

    :goto_1
    array-length v3, p0

    if-ge v0, v3, :cond_2

    aget-byte v3, p0, v0

    invoke-static {v3}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v2

    if-le v2, v1, :cond_0

    move v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v3, v4

    goto :goto_0

    :cond_2
    int-to-byte v3, v1

    return v3
.end method

.method public static varargs min([B)B
    .locals 5

    const/4 v4, 0x0

    array-length v3, p0

    if-lez v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    aget-byte v3, p0, v4

    invoke-static {v3}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v1

    const/4 v0, 0x1

    :goto_1
    array-length v3, p0

    if-ge v0, v3, :cond_2

    aget-byte v3, p0, v0

    invoke-static {v3}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v2

    if-ge v2, v1, :cond_0

    move v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v3, v4

    goto :goto_0

    :cond_2
    int-to-byte v3, v1

    return v3
.end method

.method public static saturatedCast(J)B
    .locals 2

    const-wide/16 v0, 0xff

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    long-to-int v0, p0

    int-to-byte v0, v0

    goto :goto_0
.end method

.method public static toInt(B)I
    .locals 1

    and-int/lit16 v0, p0, 0xff

    return v0
.end method
