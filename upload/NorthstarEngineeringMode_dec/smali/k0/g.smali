.class public abstract Lk0/g;
.super Lk0/c;
.source "SourceFile"


# instance fields
.field public final b:Lk0/c;

.field public final c:Lk0/c;


# direct methods
.method public constructor <init>(Lk0/c;Lk0/c;)V
    .locals 2

    invoke-direct {p0}, Lk0/c;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lk0/g;->b:Lk0/c;

    iput-object v0, p0, Lk0/g;->c:Lk0/c;

    invoke-virtual {p0, p1}, Lk0/c;->a(Lk0/c;)V

    iget-object v1, p0, Lk0/g;->b:Lk0/c;

    if-eqz v1, :cond_0

    iput-object v0, v1, Lk0/c;->a:Lk0/c;

    :cond_0
    iput-object p0, p1, Lk0/c;->a:Lk0/c;

    iput-object p1, p0, Lk0/g;->b:Lk0/c;

    invoke-virtual {p0, p2}, Lk0/c;->a(Lk0/c;)V

    iget-object p1, p0, Lk0/g;->c:Lk0/c;

    if-eqz p1, :cond_1

    iput-object v0, p1, Lk0/c;->a:Lk0/c;

    :cond_1
    iput-object p0, p2, Lk0/c;->a:Lk0/c;

    iput-object p2, p0, Lk0/g;->c:Lk0/c;

    return-void
.end method


# virtual methods
.method public abstract e()Ljava/lang/String;
.end method
