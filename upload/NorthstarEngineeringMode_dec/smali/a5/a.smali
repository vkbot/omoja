.class public final La5/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation build LaQute/bnd/annotation/baseline/BaselineIgnore;
    value = "2.22.0"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "La5/a;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final Z:La5/a;

.field public static final b1:La5/a;

.field public static final c1:La5/a;

.field public static final d1:La5/a;

.field public static final e1:La5/a;

.field public static final x:Ljava/util/concurrent/ConcurrentHashMap;

.field public static final y:La5/a;


# instance fields
.field public final c:Ljava/lang/String;

.field public final r:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, La5/a;->x:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, La5/a;

    sget-object v1, Le5/q;->r:Ljava/util/EnumSet;

    const-string v1, "OFF"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, La5/a;-><init>(Ljava/lang/String;I)V

    new-instance v0, La5/a;

    const-string v1, "FATAL"

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, La5/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, La5/a;->y:La5/a;

    new-instance v0, La5/a;

    const-string v1, "ERROR"

    const/16 v2, 0xc8

    invoke-direct {v0, v1, v2}, La5/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, La5/a;->Z:La5/a;

    new-instance v0, La5/a;

    const-string v1, "WARN"

    const/16 v2, 0x12c

    invoke-direct {v0, v1, v2}, La5/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, La5/a;->b1:La5/a;

    new-instance v0, La5/a;

    const-string v1, "INFO"

    const/16 v2, 0x190

    invoke-direct {v0, v1, v2}, La5/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, La5/a;->c1:La5/a;

    new-instance v0, La5/a;

    const-string v1, "DEBUG"

    const/16 v2, 0x1f4

    invoke-direct {v0, v1, v2}, La5/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, La5/a;->d1:La5/a;

    new-instance v0, La5/a;

    const-string v1, "TRACE"

    const/16 v2, 0x258

    invoke-direct {v0, v1, v2}, La5/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, La5/a;->e1:La5/a;

    new-instance v0, La5/a;

    const-string v1, "ALL"

    const v2, 0x7fffffff

    invoke-direct {v0, v1, v2}, La5/a;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    if-ltz p2, :cond_3

    iput-object p1, p0, La5/a;->c:Ljava/lang/String;

    iput p2, p0, La5/a;->r:I

    sget-object v0, Le5/q;->r:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le5/q;

    iget v1, v1, Le5/q;->c:I

    if-le v1, p2, :cond_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    sget-object v0, La5/a;->x:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2, p0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_2

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p2, "Level "

    const-string v0, " has already been defined."

    invoke-static {p2, p1, v0}, Landroidx/activity/result/a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Illegal Level int less than zero."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Illegal null or empty Level name."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/lang/String;)La5/a;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lg5/z;->a:[Ljava/lang/String;

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, La5/a;->x:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La5/a;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown level constant ["

    const-string v2, "]."

    invoke-static {v1, p0, v2}, Landroidx/activity/result/a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 0

    new-instance p0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {p0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw p0
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, La5/a;

    iget p1, p1, La5/a;->r:I

    iget p0, p0, La5/a;->r:I

    if-ge p0, p1, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    if-le p0, p1, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, La5/a;

    if-eqz v0, :cond_0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, La5/a;->c:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, La5/a;->c:Ljava/lang/String;

    return-object p0
.end method
