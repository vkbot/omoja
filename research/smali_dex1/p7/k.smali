.class public final Lp7/k;
.super Lo7/b;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final q:Ll9/l;


# instance fields
.field public final i:Ln7/x0;

.field public final j:Ljava/lang/String;

.field public final k:Lo7/t4;

.field public final l:Ljava/lang/String;

.field public final m:Lp7/j;

.field public final n:Ln/p;

.field public final o:Ln7/b;

.field public p:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ll9/l;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lp7/k;->q:Ll9/l;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Ln7/x0;Ln7/v0;Lp7/d;Lp7/n;Lb7/p;Ljava/lang/Object;IILjava/lang/String;Ljava/lang/String;Lo7/t4;Lo7/w4;Ln7/c;)V
    .registers 23

    .line 1
    new-instance v1, Lc5/e;

    .line 2
    .line 3
    const/16 v0, 0x10

    .line 4
    .line 5
    invoke-direct {v1, v0}, Lc5/e;-><init>(I)V

    .line 6
    .line 7
    .line 8
    const/4 v6, 0x0

    .line 9
    move-object v0, p0

    .line 10
    move-object v4, p2

    .line 11
    move-object/from16 v2, p11

    .line 12
    .line 13
    move-object/from16 v3, p12

    .line 14
    .line 15
    move-object/from16 v5, p13

    .line 16
    .line 17
    invoke-direct/range {v0 .. v6}, Lo7/b;-><init>(Lc5/e;Lo7/t4;Lo7/w4;Ln7/v0;Ln7/c;Z)V

    .line 18
    .line 19
    .line 20
    new-instance v1, Ln/p;

    .line 21
    .line 22
    const/4 v2, 0x6

    .line 23
    invoke-direct {v1, v2, p0}, Ln/p;-><init>(ILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lp7/k;->n:Ln/p;

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    iput-boolean v1, p0, Lp7/k;->p:Z

    .line 30
    .line 31
    move-object/from16 v2, p11

    .line 32
    .line 33
    iput-object v2, p0, Lp7/k;->k:Lo7/t4;

    .line 34
    .line 35
    iput-object p1, p0, Lp7/k;->i:Ln7/x0;

    .line 36
    .line 37
    move-object/from16 v1, p9

    .line 38
    .line 39
    iput-object v1, p0, Lp7/k;->l:Ljava/lang/String;

    .line 40
    .line 41
    move-object/from16 v1, p10

    .line 42
    .line 43
    iput-object v1, p0, Lp7/k;->j:Ljava/lang/String;

    .line 44
    .line 45
    iget-object v3, p4, Lp7/n;->u:Ln7/b;

    .line 46
    .line 47
    iput-object v3, p0, Lp7/k;->o:Ln7/b;

    .line 48
    .line 49
    new-instance v0, Lp7/j;

    .line 50
    .line 51
    iget-object v3, p1, Ln7/x0;->b:Ljava/lang/String;

    .line 52
    .line 53
    move-object v1, p0

    .line 54
    move-object v5, p3

    .line 55
    move-object v7, p4

    .line 56
    move-object v6, p5

    .line 57
    move-object v4, p6

    .line 58
    move/from16 v8, p8

    .line 59
    .line 60
    move-object v3, v2

    .line 61
    move/from16 v2, p7

    .line 62
    .line 63
    invoke-direct/range {v0 .. v8}, Lp7/j;-><init>(Lp7/k;ILo7/t4;Ljava/lang/Object;Lp7/d;Lb7/p;Lp7/n;I)V

    .line 64
    .line 65
    .line 66
    move-object v1, v0

    .line 67
    iput-object v1, p0, Lp7/k;->m:Lp7/j;

    .line 68
    .line 69
    return-void
.end method
