.class public interface abstract Lmega/car/config/Ota$TaskStatus;
.super Ljava/lang/Object;
.source "Ota.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmega/car/config/Ota;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TaskStatus"
.end annotation


# static fields
.field public static final DEFAULT:I = 0x0

.field public static final OTACANCELLED:I = 0xa

.field public static final OTAEXECUTINGFLASH:I = 0x5

.field public static final OTAEXECUTINGRETRY:I = 0x6

.field public static final OTAEXECUTINGROLLBACK:I = 0x7

.field public static final OTAFAILED:I = 0x9

.field public static final OTANOTEXCUTINGBYCONDITION:I = 0x4

.field public static final OTASCHEDULED:I = 0x3

.field public static final OTASUCCESSED:I = 0x8

.field public static final PACKAGEDOWNLOADEDNOTSCHEDULE:I = 0x2

.field public static final PACKAGEDOWNLOADING:I = 0x1
