.class public final Li5/p0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li5/p0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final c:Li5/p0$a;

.field public static final d:Li5/p0$a;

.field public static final e:Li5/p0$a;

.field public static final f:Li5/p0$a;

.field public static final g:Li5/p0$a;

.field public static final h:Li5/p0$a;

.field public static final i:Li5/p0$a;

.field public static final j:Li5/p0$a;

.field public static final k:Li5/p0$a;

.field public static final l:Li5/p0$a;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Li5/p0$a;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Li5/p0$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Li5/p0$a;->c:Li5/p0$a;

    new-instance v0, Li5/p0$a;

    const-string v1, "STARTDOC"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Li5/p0$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Li5/p0$a;->d:Li5/p0$a;

    new-instance v0, Li5/p0$a;

    const-string v1, "ENDDOC"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Li5/p0$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Li5/p0$a;->e:Li5/p0$a;

    new-instance v0, Li5/p0$a;

    const-string v1, "START"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Li5/p0$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Li5/p0$a;->f:Li5/p0$a;

    new-instance v0, Li5/p0$a;

    const-string v1, "END"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Li5/p0$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Li5/p0$a;->g:Li5/p0$a;

    new-instance v0, Li5/p0$a;

    const-string v1, "TEXT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Li5/p0$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Li5/p0$a;->h:Li5/p0$a;

    new-instance v0, Li5/p0$a;

    const-string v1, "ATTR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Li5/p0$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Li5/p0$a;->i:Li5/p0$a;

    new-instance v0, Li5/p0$a;

    const-string v1, "NAMESPACE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Li5/p0$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Li5/p0$a;->j:Li5/p0$a;

    new-instance v0, Li5/p0$a;

    const-string v1, "COMMENT"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Li5/p0$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Li5/p0$a;->k:Li5/p0$a;

    new-instance v0, Li5/p0$a;

    const-string v1, "PROCINST"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Li5/p0$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Li5/p0$a;->l:Li5/p0$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li5/p0$a;->a:Ljava/lang/String;

    iput p2, p0, Li5/p0$a;->b:I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Li5/p0$a;->a:Ljava/lang/String;

    return-object p0
.end method
