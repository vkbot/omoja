.class public interface abstract annotation Lmega/car/annotation/DomainDefine$Source;
.super Ljava/lang/Object;
.source "DomainDefine.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmega/car/annotation/DomainDefine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "Source"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final TYPE_ECU:I = 0x3

.field public static final TYPE_HAL:I = 0x0

.field public static final TYPE_LOCAL:I = 0x4

.field public static final TYPE_MESSAGE_CENTER:I = 0x2

.field public static final TYPE_MQTT:I = 0x1

.field public static final UNDEFINE:I = -0x1
