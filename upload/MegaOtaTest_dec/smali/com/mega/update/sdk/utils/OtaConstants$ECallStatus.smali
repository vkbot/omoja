.class public final Lcom/mega/update/sdk/utils/OtaConstants$ECallStatus;
.super Ljava/lang/Object;
.source "OtaConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/update/sdk/utils/OtaConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ECallStatus"
.end annotation


# static fields
.field public static final ACTIVE:I = 0x3

.field public static final CALLFAILED:I = 0x0

.field public static final DIALING:I = 0x1

.field public static final FAULT:I = 0x4

.field public static final IDLE:I = 0x0

.field public static final RINGING:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
