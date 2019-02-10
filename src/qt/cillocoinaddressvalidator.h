// Copyright (c) 2011-2014 The Bitcoin Core developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#ifndef CILLOCOIN_QT_CILLOCOINADDRESSVALIDATOR_H
#define CILLOCOIN_QT_CILLOCOINADDRESSVALIDATOR_H

#include <QValidator>

/** Base58 entry widget validator, checks for valid characters and
 * removes some whitespace.
 */
class CillocoinAddressEntryValidator : public QValidator
{
    Q_OBJECT

public:
    explicit CillocoinAddressEntryValidator(QObject *parent);

    State validate(QString &input, int &pos) const;
};

/** Cillocoin address widget validator, checks for a valid cillocoin address.
 */
class CillocoinAddressCheckValidator : public QValidator
{
    Q_OBJECT

public:
    explicit CillocoinAddressCheckValidator(QObject *parent);

    State validate(QString &input, int &pos) const;
};

#endif // CILLOCOIN_QT_CILLOCOINADDRESSVALIDATOR_H
