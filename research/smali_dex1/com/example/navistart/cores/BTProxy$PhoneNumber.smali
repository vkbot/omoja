.class public final Lcom/example/navistart/cores/BTProxy$PhoneNumber;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/navistart/cores/BTProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PhoneNumber"
.end annotation


# instance fields
.field public final id:Ljava/lang/String;

.field public final number:Ljava/lang/String;

.field public final type:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/example/navistart/cores/BTProxy$PhoneNumber;->number:Ljava/lang/String;

    .line 5
    .line 6
    iput p2, p0, Lcom/example/navistart/cores/BTProxy$PhoneNumber;->type:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/example/navistart/cores/BTProxy$PhoneNumber;->id:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method
