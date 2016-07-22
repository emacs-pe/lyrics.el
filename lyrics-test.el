;;; lyrics-test.el --- lyrics: Unit test suite        -*- lexical-binding: t -*-

;; Copyright (c) 2015 Mario Rodas <marsam@users.noreply.github.com>

;; Author: Mario Rodas <marsam@users.noreply.github.com>
;; URL: https://github.com/emacs-pe/lyrics.el
;; Keywords: convenience
;; Version: 0.1
;; Package-Requires: ((emacs "25"))

;; This file is NOT part of GNU Emacs.

;;; License:

;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; The unit test suite of `lyrics.el'

;;; Code:

(require 'lyrics)
(require 'undercover nil t)

(when (fboundp 'undercover)
  (undercover "lyrics.el"))

(ert-deftest lyrics-musixmatch-url-test ()
  (should (equal (lyrics-musixmatch-url "King Crimson" "Epitaph")
                 "https://www.musixmatch.com/lyrics/King-Crimson/Epitaph"))
  (should (equal (lyrics-musixmatch-url "Muse" "Exogenesis: Symphony Part 3 [Redemption]")
                 "https://www.musixmatch.com/lyrics/Muse/Exogenesis-Symphony-Part-3-Redemption"))
  (should (equal (lyrics-musixmatch-url "Megadeth" "Holy Wars...The Punishment Due - 2004 Digital Remaster")
                 "https://www.musixmatch.com/lyrics/Megadeth/Holy-Wars-The-Punishment-Due-2004-Digital-Remaster"))
  (should (equal (lyrics-musixmatch-url "The World is a Beautiful Place & I am No Longer Afraid To Die" "Wait...What")
                 "https://www.musixmatch.com/lyrics/The-World-is-a-Beautiful-Place-I-am-No-Longer-Afraid-To-Die/Wait-What"))
  (should (equal (lyrics-musixmatch-url "M83" "Oblivion (feat. Susanne Sundfør)")
                 "https://www.musixmatch.com/lyrics/M83/Oblivion-feat-Susanne-Sundfør")))

(provide 'lyrics-test)

;;; lyrics-test.el ends here
