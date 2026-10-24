.class public final Lcom/mega/update/manager/UpdateConstants$Status;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/update/manager/UpdateConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Status"
.end annotation


# static fields
.field public static final ACTIVATE_FAIL:I = 0x17

.field public static final ACTIVATE_FATAL:I = 0x19

.field public static final ACTIVATE_SUC:I = 0x18

.field public static final ACTIVATING:I = 0x15

.field public static final ACT_REBOOTING:I = 0x16

.field public static final CLEANING:I = 0x3d

.field public static final CLEANUP_FAIL:I = 0x3e

.field public static final CLEANUP_SUC:I = 0x3f

.field public static final FLASHING:I = 0xa

.field public static final FLASH_FAIL:I = 0xb

.field public static final FLASH_SUC:I = 0xc

.field public static final IDLE:I = 0x0

.field public static final LOADING:I = 0x1

.field public static final LOAD_FAIL:I = 0x3

.field public static final LOAD_SUC:I = 0x4

.field public static final RBK_REBOOTING:I = 0x33

.field public static final ROLLBACKING:I = 0x32

.field public static final ROLLBACK_FAIL:I = 0x34

.field public static final ROLLBACK_FATAL:I = 0x36

.field public static final ROLLBACK_SUC:I = 0x35

.field public static final UNKNOWN:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
