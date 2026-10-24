.class Lmega/config/util/SleepRule;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmega/config/util/SleepRule$Opt;
    }
.end annotation


# static fields
.field public static final CREATOR:Lmega/config/XmlSerializable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmega/config/XmlSerializable$Creator<",
            "Lmega/config/util/SleepRule;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field triggers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmega/config/util/SleepRule$Opt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmega/config/util/SleepRule$1;

    invoke-direct {v0}, Lmega/config/util/SleepRule$1;-><init>()V

    sput-object v0, Lmega/config/util/SleepRule;->CREATOR:Lmega/config/XmlSerializable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addAction(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lmega/config/util/SleepRule;->actions:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lmega/config/util/SleepRule;->actions:Ljava/util/List;

    :cond_0
    iget-object p0, p0, Lmega/config/util/SleepRule;->actions:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addTrigger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lmega/config/util/SleepRule;->triggers:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lmega/config/util/SleepRule;->triggers:Ljava/util/List;

    :cond_0
    new-instance v0, Lmega/config/util/SleepRule$Opt;

    invoke-direct {v0}, Lmega/config/util/SleepRule$Opt;-><init>()V

    iput-object p1, v0, Lmega/config/util/SleepRule$Opt;->action:Ljava/lang/String;

    iput-object p2, v0, Lmega/config/util/SleepRule$Opt;->retKey:Ljava/lang/String;

    iput-object p3, v0, Lmega/config/util/SleepRule$Opt;->retType:Ljava/lang/String;

    iput-object p4, v0, Lmega/config/util/SleepRule$Opt;->op:Ljava/lang/String;

    iput-object p5, v0, Lmega/config/util/SleepRule$Opt;->base:Ljava/lang/String;

    iput-boolean p6, v0, Lmega/config/util/SleepRule$Opt;->wakeUp:Z

    iget-object p0, p0, Lmega/config/util/SleepRule;->triggers:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
