.class public Lorg/apache/poi/util/RandomSingleton;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final INSTANCE:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lorg/apache/poi/util/RandomSingleton;->INSTANCE:Ljava/security/SecureRandom;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Ljava/security/SecureRandom;
    .locals 1

    sget-object v0, Lorg/apache/poi/util/RandomSingleton;->INSTANCE:Ljava/security/SecureRandom;

    return-object v0
.end method
