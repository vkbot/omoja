.class public final Lmega/car/config/Ecu$RetCode;
.super Ljava/lang/Object;
.source "Ecu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmega/car/config/Ecu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RetCode"
.end annotation


# static fields
.field public static final ECU_FAIL:I = 0x3

.field public static final ECU_INVALID_ARG:I = 0x1

.field public static final ECU_NOT_AVAILABLE:I = 0x2

.field public static final ECU_OK:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .line 10258
    if-nez p0, :cond_0

    .line 10259
    const-string v0, "ECU_OK"

    return-object v0

    .line 10261
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 10262
    const-string v0, "ECU_INVALID_ARG"

    return-object v0

    .line 10264
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 10265
    const-string v0, "ECU_NOT_AVAILABLE"

    return-object v0

    .line 10267
    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    .line 10268
    const-string v0, "ECU_FAIL"

    return-object v0

    .line 10270
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
