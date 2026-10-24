.class public final Lcom/mega/update/sdk/utils/OtaConstants$EcuErrorCode;
.super Ljava/lang/Object;
.source "OtaConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/update/sdk/utils/OtaConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EcuErrorCode"
.end annotation


# static fields
.field public static final ERROR:I = 0x1

.field public static final INVALID:I = 0x2

.field public static final INVALID_CHILD:I = 0x5

.field public static final JSON_ERROR:I = 0x4

.field public static final NO_SUPPORT:I = 0x3

.field public static final SUCCESS:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
