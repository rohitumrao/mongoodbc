/*
  Copyright (c) 2006, 2010, Oracle and/or its affiliates. All rights reserved.

  The MySQL Connector/ODBC is licensed under the terms of the GPLv2
  <http://www.gnu.org/licenses/old-licenses/gpl-2.0.html>, like most
  MySQL Connectors. There are special exceptions to the terms and
  conditions of the GPLv2 as it is applied to this software, see the
  FLOSS License Exception
  <http://www.mysql.com/about/legal/licensing/foss-exception.html>.

  This program is free software; you can redistribute it and/or modify
  it under the terms of the GNU General Public License as published
  by the Free Software Foundation; version 2 of the License.

  This program is distributed in the hope that it will be useful, but
  WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
  or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License
  for more details.

  You should have received a copy of the GNU General Public License along
  with this program; if not, write to the Free Software Foundation, Inc.,
  51 Franklin St, Fifth Floor, Boston, MA 02110-1301  USA
*/

#ifndef MYODBC_ODBC_H
#define MYODBC_ODBC_H

#define ODBCVER 0x0351

#ifdef _UNIX_
# include <ctype.h>
# ifdef HAVE_LIBDL
#  include <dlfcn.h>
# endif
# include <sql.h>
# include <sqlext.h>
# ifdef USE_IODBC
#  include <iodbcinst.h>
# else
#  include <odbcinst.h>
# endif

# ifndef SYSTEM_ODBC_INI
#  define BOTH_ODBC_INI ODBC_BOTH_DSN
#  define USER_ODBC_INI ODBC_USER_DSN
#  define SYSTEM_ODBC_INI ODBC_SYSTEM_DSN
# endif

/* If SQL_API is not defined, define it, unixODBC doesn't have this */
# if !defined(SQL_API)
#  define SQL_API
# endif
#else
# include <windows.h>
# ifndef RC_INVOKED
#  pragma pack(1)
# endif

# include <sql.h>
# include <sqlext.h>
# include <odbcinst.h>
#endif

#endif /* !MYODBC_ODBC_H */
