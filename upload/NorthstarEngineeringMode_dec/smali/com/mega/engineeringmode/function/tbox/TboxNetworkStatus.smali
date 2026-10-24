.class public final Lcom/mega/engineeringmode/function/tbox/TboxNetworkStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final DataConnection:Z

.field private final MobileNetworkType:Ljava/lang/String;

.field private final Roaming:Z

.field private final RouterIPAddress:Ljava/lang/String;

.field private final SignalStrength:I

.field private final SimCardRegistraionStatus:Z

.field private final VPNIPAddress:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZZLjava/lang/String;ZILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "MobileNetworkType"

    invoke-static {p3, v0}, Lo3/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "RouterIPAddress"

    invoke-static {p6, v0}, Lo3/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "VPNIPAddress"

    invoke-static {p7, v0}, Lo3/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/mega/engineeringmode/function/tbox/TboxNetworkStatus;->DataConnection:Z

    iput-boolean p2, p0, Lcom/mega/engineeringmode/function/tbox/TboxNetworkStatus;->SimCardRegistraionStatus:Z

    iput-object p3, p0, Lcom/mega/engineeringmode/function/tbox/TboxNetworkStatus;->MobileNetworkType:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/mega/engineeringmode/function/tbox/TboxNetworkStatus;->Roaming:Z

    iput p5, p0, Lcom/mega/engineeringmode/function/tbox/TboxNetworkStatus;->SignalStrength:I

    iput-object p6, p0, Lcom/mega/engineeringmode/function/tbox/TboxNetworkStatus;->RouterIPAddress:Ljava/lang/String;

    iput-object p7, p0, Lcom/mega/engineeringmode/function/tbox/TboxNetworkStatus;->VPNIPAddress:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(ZZLjava/lang/String;ZILjava/lang/String;Ljava/lang/String;ILo3/f;)V
    .locals 10

    and-int/lit8 v0, p8, 0x4

    const-string v1, ""

    if-eqz v0, :cond_0

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object v5, p3

    :goto_0
    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move v7, v0

    goto :goto_1

    :cond_1
    move v7, p5

    :goto_1
    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_2

    move-object v8, v1

    goto :goto_2

    :cond_2
    move-object/from16 v8, p6

    :goto_2
    and-int/lit8 v0, p8, 0x40

    if-eqz v0, :cond_3

    move-object v9, v1

    goto :goto_3

    :cond_3
    move-object/from16 v9, p7

    :goto_3
    move-object v2, p0

    move v3, p1

    move v4, p2

    move v6, p4

    .line 2
    invoke-direct/range {v2 .. v9}, Lcom/mega/engineeringmode/function/tbox/TboxNetworkStatus;-><init>(ZZLjava/lang/String;ZILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/mega/engineeringmode/function/tbox/TboxNetworkStatus;ZZLjava/lang/String;ZILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/mega/engineeringmode/function/tbox/TboxNetworkStatus;
    .locals 5

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    iget-boolean p1, p0, Lcom/mega/engineeringmode/function/tbox/TboxNetworkStatus;->DataConnection:Z

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    iget-boolean p2, p0, Lcom/mega/engineeringmode/function/tbox/TboxNetworkStatus;->SimCardRegistraionStatus:Z

    :cond_1
    move p9, p2

    and-int/lit8 p2, p8, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/mega/engineeringmode/function/tbox/TboxNetworkStatus;->MobileNetworkType:Ljava/lang/String;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p8, 0x8

    if-eqz p2, :cond_3

    iget-boolean p4, p0, Lcom/mega/engineeringmode/function/tbox/TboxNetworkStatus;->Roaming:Z

    :cond_3
    move v1, p4

    and-int/lit8 p2, p8, 0x10

    if-eqz p2, :cond_4

    iget p5, p0, Lcom/mega/engineeringmode/function/tbox/TboxNetworkStatus;->SignalStrength:I

    :cond_4
    move v2, p5

    and-int/lit8 p2, p8, 0x20

    if-eqz p2, :cond_5

    iget-object p6, p0, Lcom/mega/engineeringmode/function/tbox/TboxNetworkStatus;->RouterIPAddress:Ljava/lang/String;

    :cond_5
    move-object v3, p6

    and-int/lit8 p2, p8, 0x40

    if-eqz p2, :cond_6

    iget-object p7, p0, Lcom/mega/engineeringmode/function/tbox/TboxNetworkStatus;->VPNIPAddress:Ljava/lang/String;

    :cond_6
    move-object v4, p7

    move-object p2, p0

    move p3, p1

    move p4, p9

    move-object p5, v0

    move p6, v1

    move p7, v2

    move-object p8, v3

    move-object p9, v4

    invoke-virtual/range {p2 .. p9}, Lcom/mega/engineeringmode/function/tbox/TboxNetworkStatus;->copy(ZZLjava/lang/String;ZILjava/lang/String;Ljava/lang/String;)Lcom/mega/engineeringmode/function/tbox/TboxNetworkStatus;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 0

    iget-boolean p0, p0, Lcom/mega/engineeringmode/function/tbox/TboxNetworkStatus;->DataConnection:Z

    return p0
.end method

.method public final component2()Z
    .locals 0

    iget-boolean p0, p0, Lcom/mega/engineeringmode/function/tbox/TboxNetworkStatus;->SimCardRegistraionStatus:Z

    return p0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mega/engineeringmode/function/tbox/TboxNetworkStatus;->MobileNetworkType:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()Z
    .locals 0

    iget-boolean p0, p0, Lcom/mega/engineeringmode/function/tbox/TboxNetworkStatus;->Roaming:Z

    return p0
.end method

.method public final component5()I
    .locals 0

    iget p0, p0, Lcom/mega/engineeringmode/function/tbox/TboxNetworkStatus;->SignalStrength:I

    return p0
.end method

.method public final component6()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mega/engineeringmode/function/tbox/TboxNetworkStatus;->RouterIPAddress:Ljava/lang/String;

    return-object p0
.end method

.method public final component7()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mega/engineeringmode/function/tbox/TboxNetworkStatus;->VPNIPAddress:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(ZZLjava/lang/String;ZILjava/lang/String;Ljava/lang/String;)Lcom/mega/engineeringmode/function/tbox/TboxNetworkStatus;
    .locals 8

    const-string p0, "MobileNetworkType"

    invoke-static {p3, p0}, Lo3/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "RouterIPAddress"

    invoke-static {p6, p0}, Lo3/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "VPNIPAddress"

    invoke-static {p7, p0}, Lo3/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/mega/engineeringmode/function/tbox/TboxNetworkStatus;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/mega/engineeringmode/function/tbox/TboxNetworkStatus;-><init>(ZZLjava/lang/String;ZILjava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/mega/engineeringmode/function/tbox/TboxNetworkStatus;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/mega/engineeringmode/function/tbox/TboxNetworkStatus;

    iget-boolean v1, p0, Lcom/mega/engineeringmode/function/tbox/TboxNetworkStatus;->DataConnection:Z

    iget-boolean v3, p1, Lcom/mega/engineeringmode/function/tbox/TboxNetworkStatus;->DataConnection:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/mega/engineeringmode/function/tbox/TboxNetworkStatus;->SimCardRegistraionStatus:Z

    iget-boolean v3, p1, Lcom/mega/engineeringmode/function/tbox/TboxNetworkStatus;->SimCardRegistraionStatus:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/mega/engineeringmode/function/tbox/TboxNetworkStatus;->MobileNetworkType:Ljava/lang/String;

    iget-object v3, p1, Lcom/mega/engineeringmode/function/tbox/TboxNetworkStatus;->MobileNetworkType:Ljava/lang/String;

    invoke-static {v1, v3}, Lo3/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/mega/engineeringmode/function/tbox/TboxNetworkStatus;->Roaming:Z

    iget-boolean v3, p1, Lcom/mega/engineeringmode/function/tbox/TboxNetworkStatus;->Roaming:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/mega/engineeringmode/function/tbox/TboxNetworkStatus;->SignalStrength:I

    iget v3, p1, Lcom/mega/engineeringmode/function/tbox/TboxNetworkStatus;->SignalStrength:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/mega/engineeringmode/function/tbox/TboxNetworkStatus;->RouterIPAddress:Ljava/lang/String;

    iget-object v3, p1, Lcom/mega/engineeringmode/function/tbox/TboxNetworkStatus;->RouterIPAddress:Ljava/lang/String;

    invoke-static {v1, v3}, Lo3/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object p0, p0, Lcom/mega/engineeringmode/function/tbox/TboxNetworkStatus;->VPNIPAddress:Ljava/lang/String;

    iget-object p1, p1, Lcom/mega/engineeringmode/function/tbox/TboxNetworkStatus;->VPNIPAddress:Ljava/lang/String;

    invoke-static {p0, p1}, Lo3/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final getDataConnection()Z
    .locals 0

    iget-boolean p0, p0, Lcom/mega/engineeringmode/function/tbox/TboxNetworkStatus;->DataConnection:Z

    return p0
.end method

.method public final getMobileNetworkType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mega/engineeringmode/function/tbox/TboxNetworkStatus;->MobileNetworkType:Ljava/lang/String;

    return-object p0
.end method

.method public final getRoaming()Z
    .locals 0

    iget-boolean p0, p0, Lcom/mega/engineeringmode/function/tbox/TboxNetworkStatus;->Roaming:Z

    return p0
.end method

.method public final getRouterIPAddress()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mega/engineeringmode/function/tbox/TboxNetworkStatus;->RouterIPAddress:Ljava/lang/String;

    return-object p0
.end method

.method public final getSignalStrength()I
    .locals 0

    iget p0, p0, Lcom/mega/engineeringmode/function/tbox/TboxNetworkStatus;->SignalStrength:I

    return p0
.end method

.method public final getSimCardRegistraionStatus()Z
    .locals 0

    iget-boolean p0, p0, Lcom/mega/engineeringmode/function/tbox/TboxNetworkStatus;->SimCardRegistraionStatus:Z

    return p0
.end method

.method public final getVPNIPAddress()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mega/engineeringmode/function/tbox/TboxNetworkStatus;->VPNIPAddress:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/mega/engineeringmode/function/tbox/TboxNetworkStatus;->DataConnection:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/mega/engineeringmode/function/tbox/TboxNetworkStatus;->SimCardRegistraionStatus:Z

    if-eqz v2, :cond_1

    move v2, v1

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/mega/engineeringmode/function/tbox/TboxNetworkStatus;->MobileNetworkType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-boolean v0, p0, Lcom/mega/engineeringmode/function/tbox/TboxNetworkStatus;->Roaming:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_0
    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x1f

    iget v0, p0, Lcom/mega/engineeringmode/function/tbox/TboxNetworkStatus;->SignalStrength:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/mega/engineeringmode/function/tbox/TboxNetworkStatus;->RouterIPAddress:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/mega/engineeringmode/function/tbox/TboxNetworkStatus;->VPNIPAddress:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TboxNetworkStatus(DataConnection="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/mega/engineeringmode/function/tbox/TboxNetworkStatus;->DataConnection:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", SimCardRegistraionStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mega/engineeringmode/function/tbox/TboxNetworkStatus;->SimCardRegistraionStatus:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", MobileNetworkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mega/engineeringmode/function/tbox/TboxNetworkStatus;->MobileNetworkType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Roaming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mega/engineeringmode/function/tbox/TboxNetworkStatus;->Roaming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", SignalStrength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mega/engineeringmode/function/tbox/TboxNetworkStatus;->SignalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", RouterIPAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mega/engineeringmode/function/tbox/TboxNetworkStatus;->RouterIPAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", VPNIPAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/mega/engineeringmode/function/tbox/TboxNetworkStatus;->VPNIPAddress:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
