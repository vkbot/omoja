.class public final Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "DevicePolicyProtos.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;",
        "Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent$Builder;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 647
    invoke-static {}, Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;->access$000()Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/managedprovisioning/DevicePolicyProtos$1;)V
    .locals 0

    .line 640
    invoke-direct {p0}, Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addStringListValue(Ljava/lang/String;)Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent$Builder;
    .locals 1

    .line 981
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 982
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;

    invoke-static {v0, p1}, Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;->access$1300(Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;Ljava/lang/String;)V

    return-object p0
.end method

.method public setAdminPackageName(Ljava/lang/String;)Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent$Builder;
    .locals 1

    .line 741
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 742
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;

    invoke-static {v0, p1}, Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;->access$300(Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;Ljava/lang/String;)V

    return-object p0
.end method

.method public setBooleanValue(Z)Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent$Builder;
    .locals 1

    .line 848
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 849
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;

    invoke-static {v0, p1}, Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;->access$800(Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;Z)V

    return-object p0
.end method

.method public setEventId(I)Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent$Builder;
    .locals 1

    .line 681
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 682
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;

    invoke-static {v0, p1}, Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;->access$100(Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;I)V

    return-object p0
.end method

.method public setIntegerValue(I)Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent$Builder;
    .locals 1

    .line 801
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 802
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;

    invoke-static {v0, p1}, Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;->access$600(Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;I)V

    return-object p0
.end method

.method public setTimePeriodMillis(J)Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent$Builder;
    .locals 1

    .line 895
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 896
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;

    invoke-static {v0, p1, p2}, Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;->access$1000(Lcom/android/managedprovisioning/DevicePolicyProtos$DevicePolicyEvent;J)V

    return-object p0
.end method
