.class public Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;
.super Ljava/lang/Object;
.source "ConnectAccount.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/internal/common/ConnectAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccountDevice"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceStatus;,
        Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x25413a6c6739ebL


# instance fields
.field private deviceId:Ljava/lang/String;

.field private isThisDevice:Z

.field private lastCheckin:J

.field private name:Ljava/lang/String;

.field private status:Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceStatus;

.field private type:Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JZLcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;->deviceId:Ljava/lang/String;

    iput-wide p3, p0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;->lastCheckin:J

    iput-boolean p5, p0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;->isThisDevice:Z

    iput-object p2, p0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;->name:Ljava/lang/String;

    iput-object p6, p0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;->type:Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;

    sget-object v0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceStatus;->ACTIVE:Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceStatus;

    iput-object v0, p0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;->status:Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceStatus;

    return-void
.end method


# virtual methods
.method public getDeviceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceStatus()Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceStatus;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;->status:Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceStatus;

    return-object v0
.end method

.method public getIsThisDevice()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;->isThisDevice:Z

    return v0
.end method

.method public getLastCheckin()J
    .locals 2

    iget-wide v0, p0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;->lastCheckin:J

    return-wide v0
.end method

.method public getLastCheckinDaysAgo()I
    .locals 4

    invoke-virtual {p0}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;->getLastCheckinDiff()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public getLastCheckinDiff()J
    .locals 8

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const-string v4, "UTC"

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v5, p0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;->lastCheckin:J

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    sub-long v2, v4, v6

    return-wide v2
.end method

.method public getLastCheckinHoursAgo()I
    .locals 4

    invoke-virtual {p0}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;->getLastCheckinDiff()J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public getLastCheckinMinutesAgo()I
    .locals 4

    invoke-virtual {p0}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;->getLastCheckinDiff()J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;->type:Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;

    return-object v0
.end method

.method public isDeleted()Z
    .locals 2

    sget-object v0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceStatus;->PENDING_DELETE:Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceStatus;

    iget-object v1, p0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;->status:Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceStatus;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public markAsDeleted()V
    .locals 1

    sget-object v0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceStatus;->PENDING_DELETE:Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceStatus;

    iput-object v0, p0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;->status:Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceStatus;

    return-void
.end method

.method public setIsThisDevice(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;->isThisDevice:Z

    return-void
.end method

.method public setLastCheckin(J)V
    .locals 0

    iput-wide p1, p0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;->lastCheckin:J

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;->name:Ljava/lang/String;

    return-void
.end method

.method public setType(Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;->type:Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AccountDevice [ "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;->deviceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lastCheckin timestamp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;->lastCheckin:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lastCheckin diff: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;->getLastCheckinDiff()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lastCheckin days: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;->getLastCheckinDaysAgo()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lastCheckin hours: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;->getLastCheckinHoursAgo()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lastCheckin minutes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;->getLastCheckinMinutesAgo()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;->getType()Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
