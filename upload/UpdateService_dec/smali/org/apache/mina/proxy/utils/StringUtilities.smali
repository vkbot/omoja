.class public Lorg/apache/mina/proxy/utils/StringUtilities;
.super Ljava/lang/Object;
.source "StringUtilities.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static addValueToHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "singleValued"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 328
    .local p0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 330
    .local v0, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 331
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v2

    .line 332
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    :cond_0
    if-eqz p3, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 336
    const/4 v1, 0x0

    invoke-interface {v0, v1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 338
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    :goto_0
    return-void
.end method

.method public static copyDirective(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p2, "directive"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 96
    .local p0, "src":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p1, "dst":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 98
    .local v0, "directiveValue":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 99
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    :cond_0
    return-object v0
.end method

.method public static copyDirective(Ljava/util/Map;Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "directive"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 78
    .local p0, "directives":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 80
    .local v0, "directiveValue":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " = \""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    :cond_0
    return-void
.end method

.method private static extractDirective(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/sasl/SaslException;
        }
    .end annotation

    .line 232
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 236
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    return-void

    .line 233
    :cond_0
    new-instance v0, Ljavax/security/sasl/SaslException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Peer sent more than one "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " directive"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getDirectiveValue(Ljava/util/Map;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .param p1, "directive"    # Ljava/lang/String;
    .param p2, "mandatory"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/sasl/AuthenticationException;
        }
    .end annotation

    .line 56
    .local p0, "directivesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 58
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 59
    if-nez p2, :cond_0

    .line 63
    const-string v1, ""

    return-object v1

    .line 60
    :cond_0
    new-instance v1, Ljavax/security/sasl/AuthenticationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\" mandatory directive is missing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/security/sasl/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 66
    :cond_1
    return-object v0
.end method

.method public static getSingleValuedHeader(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 303
    .local p0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 305
    .local v0, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 306
    const/4 v1, 0x0

    return-object v1

    .line 309
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_1

    .line 313
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 310
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Header with key [\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\"] isn\'t single valued !"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static isLws(B)Z
    .locals 1
    .param p0, "b"    # B

    .line 248
    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    .line 256
    const/4 v0, 0x0

    return v0

    .line 253
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static parseDirectives([B)Ljava/util/Map;
    .locals 13
    .param p0, "buf"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/sasl/SaslException;
        }
    .end annotation

    .line 114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 115
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x1

    .line 116
    .local v1, "gettingKey":Z
    const/4 v2, 0x0

    .line 117
    .local v2, "gettingQuotedValue":Z
    const/4 v3, 0x0

    .line 120
    .local v3, "expectSeparator":Z
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    const/16 v5, 0xa

    invoke-direct {v4, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 121
    .local v4, "key":Ljava/io/ByteArrayOutputStream;
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    move-object v5, v6

    .line 123
    .local v5, "value":Ljava/io/ByteArrayOutputStream;
    const/4 v6, 0x0

    invoke-static {p0, v6}, Lorg/apache/mina/proxy/utils/StringUtilities;->skipLws([BI)I

    move-result v7

    .line 125
    .local v7, "i":I
    :cond_0
    :goto_0
    array-length v8, p0

    const-string v9, " with value: "

    const-string v10, "Unmatched quote found for directive: "

    if-ge v7, v8, :cond_11

    .line 126
    aget-byte v8, p0, v7

    .line 128
    .local v8, "bch":B
    const/16 v11, 0x22

    const/16 v12, 0x2c

    if-eqz v1, :cond_9

    .line 129
    if-ne v8, v12, :cond_2

    .line 130
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v9

    if-nez v9, :cond_1

    .line 135
    add-int/lit8 v9, v7, 0x1

    invoke-static {p0, v9}, Lorg/apache/mina/proxy/utils/StringUtilities;->skipLws([BI)I

    move-result v7

    goto :goto_0

    .line 131
    :cond_1
    new-instance v6, Ljavax/security/sasl/SaslException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Directive key contains a \',\':"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Ljavax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 136
    :cond_2
    const/16 v9, 0x3d

    if-ne v8, v9, :cond_5

    .line 137
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v9

    if-eqz v9, :cond_4

    .line 141
    const/4 v1, 0x0

    .line 142
    add-int/lit8 v9, v7, 0x1

    invoke-static {p0, v9}, Lorg/apache/mina/proxy/utils/StringUtilities;->skipLws([BI)I

    move-result v7

    .line 145
    array-length v9, p0

    if-ge v7, v9, :cond_3

    .line 146
    aget-byte v9, p0, v7

    if-ne v9, v11, :cond_0

    .line 147
    const/4 v2, 0x1

    .line 148
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 151
    :cond_3
    new-instance v6, Ljavax/security/sasl/SaslException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Valueless directive found: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Ljavax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 138
    :cond_4
    new-instance v6, Ljavax/security/sasl/SaslException;

    const-string v9, "Empty directive key"

    invoke-direct {v6, v9}, Ljavax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 153
    :cond_5
    invoke-static {v8}, Lorg/apache/mina/proxy/utils/StringUtilities;->isLws(B)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 155
    add-int/lit8 v10, v7, 0x1

    invoke-static {p0, v10}, Lorg/apache/mina/proxy/utils/StringUtilities;->skipLws([BI)I

    move-result v7

    .line 158
    array-length v10, p0

    const-string v11, "\'=\' expected after key: "

    if-ge v7, v10, :cond_7

    .line 159
    aget-byte v10, p0, v7

    if-ne v10, v9, :cond_6

    goto/16 :goto_0

    .line 160
    :cond_6
    new-instance v6, Ljavax/security/sasl/SaslException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Ljavax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 163
    :cond_7
    new-instance v6, Ljavax/security/sasl/SaslException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Ljavax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 166
    :cond_8
    invoke-virtual {v4, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 167
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 169
    :cond_9
    if-eqz v2, :cond_d

    .line 171
    const/16 v12, 0x5c

    if-ne v8, v12, :cond_b

    .line 173
    add-int/lit8 v7, v7, 0x1

    .line 175
    array-length v11, p0

    if-ge v7, v11, :cond_a

    .line 176
    aget-byte v9, p0, v7

    invoke-virtual {v5, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 177
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 180
    :cond_a
    new-instance v6, Ljavax/security/sasl/SaslException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Ljavax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 183
    :cond_b
    if-ne v8, v11, :cond_c

    .line 185
    add-int/lit8 v7, v7, 0x1

    .line 186
    const/4 v2, 0x0

    .line 187
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 189
    :cond_c
    invoke-virtual {v5, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 190
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 192
    :cond_d
    invoke-static {v8}, Lorg/apache/mina/proxy/utils/StringUtilities;->isLws(B)Z

    move-result v9

    if-nez v9, :cond_10

    if-ne v8, v12, :cond_e

    goto :goto_1

    .line 200
    :cond_e
    if-nez v3, :cond_f

    .line 204
    invoke-virtual {v5, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 205
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 201
    :cond_f
    new-instance v6, Ljavax/security/sasl/SaslException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Expecting comma or linear whitespace after quoted string: \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Ljavax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 194
    :cond_10
    :goto_1
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v9, v10}, Lorg/apache/mina/proxy/utils/StringUtilities;->extractDirective(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 196
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 197
    const/4 v1, 0x1

    .line 198
    move v3, v6

    move v2, v6

    .line 199
    add-int/lit8 v9, v7, 0x1

    invoke-static {p0, v9}, Lorg/apache/mina/proxy/utils/StringUtilities;->skipLws([BI)I

    move-result v7

    goto/16 :goto_0

    .line 209
    .end local v8    # "bch":B
    :cond_11
    if-nez v2, :cond_13

    .line 215
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v6

    if-lez v6, :cond_12

    .line 216
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v6, v8}, Lorg/apache/mina/proxy/utils/StringUtilities;->extractDirective(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :cond_12
    return-object v0

    .line 210
    :cond_13
    new-instance v6, Ljavax/security/sasl/SaslException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljavax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method private static skipLws([BI)I
    .locals 2
    .param p0, "buf"    # [B
    .param p1, "start"    # I

    .line 269
    move v0, p1

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 270
    aget-byte v1, p0, v0

    invoke-static {v1}, Lorg/apache/mina/proxy/utils/StringUtilities;->isLws(B)Z

    move-result v1

    if-nez v1, :cond_0

    .line 271
    return v0

    .line 269
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 275
    :cond_1
    return v0
.end method

.method public static stringTo8859_1(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 287
    if-nez p0, :cond_0

    .line 288
    const-string v0, ""

    return-object v0

    .line 291
    :cond_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const-string v2, "8859_1"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method
