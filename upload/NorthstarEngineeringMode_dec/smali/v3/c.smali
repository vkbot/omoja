.class public final Lv3/c;
.super Lv3/p0;
.source "SourceFile"


# instance fields
.field public final e1:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Ljava/lang/Thread;)V
    .locals 0

    invoke-direct {p0}, Lv3/p0;-><init>()V

    iput-object p1, p0, Lv3/c;->e1:Ljava/lang/Thread;

    return-void
.end method


# virtual methods
.method public final H()Ljava/lang/Thread;
    .locals 0

    iget-object p0, p0, Lv3/c;->e1:Ljava/lang/Thread;

    return-object p0
.end method
