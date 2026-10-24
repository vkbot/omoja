.class public final Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "DevicePolicyProtos.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;",
        "Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent$Builder;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final ADMIN_PACKAGE_NAME_FIELD_NUMBER:I = 0x2

.field public static final BOOLEAN_VALUE_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;

.field public static final EVENT_ID_FIELD_NUMBER:I = 0x1

.field public static final INTEGER_VALUE_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final STRING_LIST_VALUE_FIELD_NUMBER:I = 0x6

.field public static final TIME_PERIOD_MILLIS_FIELD_NUMBER:I = 0x5


# instance fields
.field private adminPackageName_:Ljava/lang/String;

.field private bitField0_:I

.field private booleanValue_:Z

.field private eventId_:I

.field private integerValue_:I

.field private stringListValue_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private timePeriodMillis_:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1086
    new-instance v0, Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;

    invoke-direct {v0}, Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;-><init>()V

    .line 1089
    sput-object v0, Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;->DEFAULT_INSTANCE:Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;

    .line 1090
    const-class v1, Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 157
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 158
    iput-object v0, p0, Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;->adminPackageName_:Ljava/lang/String;

    .line 159
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;->stringListValue_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$000()Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;
    .locals 1

    .line 152
    sget-object v0, Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;->DEFAULT_INSTANCE:Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;I)V
    .locals 0

    .line 152
    invoke-direct {p0, p1}, Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;->setEventId(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;J)V
    .locals 0

    .line 152
    invoke-direct {p0, p1, p2}, Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;->setTimePeriodMillis(J)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;Ljava/lang/String;)V
    .locals 0

    .line 152
    invoke-direct {p0, p1}, Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;->addStringListValue(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;Ljava/lang/String;)V
    .locals 0

    .line 152
    invoke-direct {p0, p1}, Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;->setAdminPackageName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;I)V
    .locals 0

    .line 152
    invoke-direct {p0, p1}, Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;->setIntegerValue(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;Z)V
    .locals 0

    .line 152
    invoke-direct {p0, p1}, Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;->setBooleanValue(Z)V

    return-void
.end method

.method private addStringListValue(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 509
    invoke-direct {p0}, Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;->ensureStringListValueIsMutable()V

    .line 510
    iget-object p0, p0, Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;->stringListValue_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 507
    throw p0
.end method

.method private ensureStringListValueIsMutable()V
    .locals 1

    .line 477
    iget-object v0, p0, Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;->stringListValue_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;->stringListValue_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 479
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;->stringListValue_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static newBuilder()Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent$Builder;
    .locals 1

    .line 626
    sget-object v0, Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;->DEFAULT_INSTANCE:Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 603
    sget-object v0, Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;->DEFAULT_INSTANCE:Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;

    return-object p0
.end method

.method private setAdminPackageName(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 257
    iget v0, p0, Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;->bitField0_:I

    .line 258
    iput-object p1, p0, Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;->adminPackageName_:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 255
    throw p0
.end method

.method private setBooleanValue(Z)V
    .locals 1

    .line 366
    iget v0, p0, Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;->bitField0_:I

    .line 367
    iput-boolean p1, p0, Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;->booleanValue_:Z

    return-void
.end method

.method private setEventId(I)V
    .locals 1

    .line 194
    iget v0, p0, Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;->bitField0_:I

    .line 195
    iput p1, p0, Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;->eventId_:I

    return-void
.end method

.method private setIntegerValue(I)V
    .locals 1

    .line 319
    iget v0, p0, Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;->bitField0_:I

    .line 320
    iput p1, p0, Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;->integerValue_:I

    return-void
.end method

.method private setTimePeriodMillis(J)V
    .locals 1

    .line 413
    iget v0, p0, Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;->bitField0_:I

    .line 414
    iput-wide p1, p0, Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;->timePeriodMillis_:J

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1031
    sget-object p0, Lcom/android/managedprovisioning/DevicePolicyProtos$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    const/4 p2, 0x0

    packed-switch p0, :pswitch_data_0

    .line 1079
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_0
    return-object p2

    .line 1073
    :pswitch_1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 1058
    :pswitch_2
    sget-object p0, Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_1

    .line 1060
    const-class p1, Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;

    monitor-enter p1

    .line 1061
    :try_start_0
    sget-object p0, Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_0

    .line 1063
    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;->DEFAULT_INSTANCE:Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1066
    sput-object p0, Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;->PARSER:Lcom/google/protobuf/Parser;

    .line 1068
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-object p0

    .line 1055
    :pswitch_3
    sget-object p0, Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;->DEFAULT_INSTANCE:Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;

    return-object p0

    :pswitch_4
    const/4 p0, 0x7

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "bitField0_"

    aput-object p3, p0, p2

    const-string p2, "eventId_"

    aput-object p2, p0, p1

    const/4 p1, 0x2

    const-string p2, "adminPackageName_"

    aput-object p2, p0, p1

    const/4 p1, 0x3

    const-string p2, "integerValue_"

    aput-object p2, p0, p1

    const/4 p1, 0x4

    const-string p2, "booleanValue_"

    aput-object p2, p0, p1

    const/4 p1, 0x5

    const-string p2, "timePeriodMillis_"

    aput-object p2, p0, p1

    const/4 p1, 0x6

    const-string p2, "stringListValue_"

    aput-object p2, p0, p1

    .line 1051
    sget-object p1, Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;->DEFAULT_INSTANCE:Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;

    const-string p2, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0000\u0001\u0004\u0000\u0002\u0008\u0001\u0003\u0004\u0002\u0004\u0007\u0003\u0005\u0003\u0004\u0006\u001a"

    invoke-static {p1, p2, p0}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 1036
    :pswitch_5
    new-instance p0, Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent$Builder;

    invoke-direct {p0, p2}, Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent$Builder;-><init>(Lcom/android/managedprovisioning/DevicePolicyProtos$1;)V

    return-object p0

    .line 1033
    :pswitch_6
    new-instance p0, Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;

    invoke-direct {p0}, Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;-><init>()V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getAdminPackageName()Ljava/lang/String;
    .locals 0

    .line 231
    iget-object p0, p0, Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;->adminPackageName_:Ljava/lang/String;

    return-object p0
.end method

.method public getBooleanValue()Z
    .locals 0

    .line 356
    iget-boolean p0, p0, Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;->booleanValue_:Z

    return p0
.end method

.method public getEventId()I
    .locals 0

    .line 184
    iget p0, p0, Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;->eventId_:I

    return p0
.end method

.method public getIntegerValue()I
    .locals 0

    .line 309
    iget p0, p0, Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;->integerValue_:I

    return p0
.end method

.method public getStringListValueCount()I
    .locals 0

    .line 450
    iget-object p0, p0, Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;->stringListValue_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getStringListValueList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 439
    iget-object p0, p0, Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;->stringListValue_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object p0
.end method

.method public getTimePeriodMillis()J
    .locals 2

    .line 403
    iget-wide v0, p0, Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;->timePeriodMillis_:J

    return-wide v0
.end method
