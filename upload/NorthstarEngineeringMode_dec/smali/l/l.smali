.class public abstract Ll/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ll/l$b;

.field public static final b:Ll/l$c;

.field public static final c:Ll/l$e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ll/l$a;

    invoke-direct {v0}, Ll/l;-><init>()V

    new-instance v0, Ll/l$b;

    invoke-direct {v0}, Ll/l;-><init>()V

    sput-object v0, Ll/l;->a:Ll/l$b;

    new-instance v0, Ll/l$c;

    invoke-direct {v0}, Ll/l;-><init>()V

    sput-object v0, Ll/l;->b:Ll/l$c;

    new-instance v0, Ll/l$d;

    invoke-direct {v0}, Ll/l;-><init>()V

    new-instance v0, Ll/l$e;

    invoke-direct {v0}, Ll/l;-><init>()V

    sput-object v0, Ll/l;->c:Ll/l$e;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Z
.end method

.method public abstract b()Z
.end method

.method public abstract c(Li/a;)Z
.end method

.method public abstract d(ZLi/a;Li/c;)Z
.end method
