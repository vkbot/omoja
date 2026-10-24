.class public interface abstract Lmega/car/config/VehicleBody$DiagnosisState;
.super Ljava/lang/Object;
.source "VehicleBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmega/car/config/VehicleBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DiagnosisState"
.end annotation


# static fields
.field public static final DIAGNOSING:I = 0x1

.field public static final FAILURE_DI_CONNECTED:I = 0x5

.field public static final FAILURE_KEY_NOT_ON:I = 0x4

.field public static final FAILURE_UPLOADED:I = 0x6

.field public static final SUCCESS:I = 0x3

.field public static final UNKNOWN:I = 0x0

.field public static final UPLOADING:I = 0x2
