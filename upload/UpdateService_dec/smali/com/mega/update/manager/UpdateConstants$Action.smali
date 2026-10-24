.class public final Lcom/mega/update/manager/UpdateConstants$Action;
.super Ljava/lang/Object;
.source "UpdateConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/update/manager/UpdateConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Action"
.end annotation


# static fields
.field public static final ACTIVATE:I = 0x4

.field public static final CLEANUP:I = 0xa

.field public static final FLASH:I = 0x2

.field public static final FLASH_ACTIVATE:I = 0x6

.field public static final LOAD:I = 0x1

.field public static final LOAD_FLASH:I = 0x3

.field public static final RESUME:I = 0x8

.field public static final ROLLBACK:I = 0x9

.field public static final UPDATE:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
