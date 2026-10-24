.class final Lmega/config/util/SleepRule$Opt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmega/config/util/SleepRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Opt"
.end annotation


# static fields
.field public static final CREATOR:Lmega/config/XmlSerializable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmega/config/XmlSerializable$Creator<",
            "Lmega/config/util/SleepRule$Opt;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field action:Ljava/lang/String;

.field base:Ljava/lang/String;

.field op:Ljava/lang/String;

.field retKey:Ljava/lang/String;

.field retType:Ljava/lang/String;

.field wakeUp:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmega/config/util/SleepRule$Opt$1;

    invoke-direct {v0}, Lmega/config/util/SleepRule$Opt$1;-><init>()V

    sput-object v0, Lmega/config/util/SleepRule$Opt;->CREATOR:Lmega/config/XmlSerializable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
